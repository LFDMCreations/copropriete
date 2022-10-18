Sequel.migration do
  up do

    db = self
    
    # add citext extension to postgres : 
    # https://www.postgresql.org/docs/current/citext.html
    # http://rodauth.jeremyevans.net/rdoc/files/README_rdoc.html
    # connect to database and enter : `CREATE EXTENSION IF NOT EXISTS citext;`

    create_table(:administrators) do
      primary_key :id, :type=>:Bignum
      String :name, size: 250, null: false
      String :first_name, size: 250, null: false
      FalseClass :superuser, null: false, default: false
      citext :email, :null=>false
      constraint :valid_email, :email=>/^[^,;@ \r\n]+@[^,@; \r\n]+\.[^,@; \r\n]+$/
      index :email, :unique=>true
      DateTime :created_at, :null=>false, :default=>Sequel::CURRENT_TIMESTAMP
    end

    create_table(:administrator_password_hashes) do
      primary_key :id, :type=>:Bignum
      foreign_key :administrator_id, :administrators, :index => true, :null=>false, :type=>:Bignum, :unique=>true
      String :password_digest, :null=>false
    end

    # track at what state of account creation the user is. 
    # 0 = account creation completed
    create_table(:administrator_validation_status) do
      primary_key :id, :type=>:Bignum
      foreign_key :adminisatator_id, :administrators, :type=>:Bignum, :index => true, :unique=>true
      String :password_digest, :null=>false
    end

    create_table(:administrator_connexions) do
      primary_key :id, :type=>:Bignum
      foreign_key :administrator_id, :administrators, :null=>false, :type=>:Bignum
      DateTime :created_at, :null=>false, :default=>Sequel::CURRENT_TIMESTAMP
    end

    # jwt refresh token
    create_table(:administrator_jwt_refresh_keys) do
      primary_key :id, :type=>:Bignum
      foreign_key :administrator_id, :administrators, :null=>false, :type=>:Bignum, :unique=>true
      String :token, :null=>false
      DateTime :created_at, :null=>false, :default=>Sequel::CURRENT_TIMESTAMP
      DateTime :deadline, :null=>false
    end

    # remember me
    create_table(:administrator_remember_keys) do
      primary_key :id, :type=>:Bignum
      foreign_key :administrator_id, :administrators, :null=>false, :type=>:Bignum, :unique=>true
      String :token, :null=>false
      DateTime :created_at, :null=>false, :default=>Sequel::CURRENT_TIMESTAMP
      DateTime :deadline, :null=>false
    end


  end

  down do
    drop_table( :users,
                :user_password_hashes,
                :user_validation_status,
                :user_connexions,
                :user_jwt_refresh_keys,
                :user_remember_keys
    )
  end

end
