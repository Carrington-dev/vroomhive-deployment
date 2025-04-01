sudo -u postgres psql
CREATE DATABASE vroomhive;
CREATE USER vroomhive_user WITH PASSWORD '#Mulalo96';
ALTER ROLE vroomhive_user SET client_encoding TO 'utf8';
ALTER ROLE vroomhive_user SET default_transaction_isolation TO 'read committed';
ALTER ROLE vroomhive_user SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE vroomhive TO vroomhive_user;

GRANT ALL ON DATABASE vroomhive TO vroomhive_user;
ALTER DATABASE vroomhive OWNER TO vroomhive_user;
GRANT USAGE, CREATE ON SCHEMA PUBLIC TO vroomhive_user;