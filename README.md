# Installation

## get the sources

```
npx degit LFDMCreations/copropriete copropriete
cd copropriete
bundle install
```

## prepare the database

Then, in postgresql, create a database (for example : copropriete_development) and a user with the same name. 

Change database ownership to that user.

### add citext extension to postgres : 
https://www.postgresql.org/docs/current/citext.html

http://rodauth.jeremyevans.net/rdoc/files/README_rdoc.html

connect to database and enter : `CREATE EXTENSION IF NOT EXISTS citext;`

## migration
Run migrations using `sequel -m` : 

`sequel -m migrations postgres://copropriete_development@localhost/copropriete_development`

_or whatever your database name and postgresql user is_

see : https://sequel.jeremyevans.net/rdoc/files/doc/migration_rdoc.html

## migrate the plan comptable into the database

1. uncomment line 16 of `app.rb`

2. Run `racksh` or `rackup` from the directory root. 

3. then `exit` (if racksh) of `ctrl + C` (if rackup) and comment line 16 of `app.rb`

4. re-run `racksh` or `rackup` and start building your app.

# contenu

La migration comporte l'ensemble du plan comptable des copropriétés. 

La migration est également à jour avec les obligations règlementaires des syndics 

# Sinatra and Sequel
This application is built with the Sinatra framework and Sequel.
Build your own url endpoints and use this as an API with a frontend framework or add views to the Sinatra app.
