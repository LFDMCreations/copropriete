# Installation

```
npx degit LFDMCreations/copropriete copropriete
cd copropriete
bundle install
```

## add citext extension to postgres : 
https://www.postgresql.org/docs/current/citext.html
http://rodauth.jeremyevans.net/rdoc/files/README_rdoc.html
connect to database and enter : `CREATE EXTENSION IF NOT EXISTS citext;`

## migration
Run migrations using `sequel -m`
sequel -m migrations postgres://copropriete_development@localhost/copropriete_development 
https://sequel.jeremyevans.net/rdoc/files/doc/migration_rdoc.html


## contenu
La migration comporte l'ensemble du plan comptable des copropriétés. 
La migration est également à jour avec les obligations règlementaires des syndics 

## Sinatra and Sequel
This application is built with the Sinatra framework and Sequel