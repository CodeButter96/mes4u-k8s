#!/bin/bash
psql -U postgres -c "CREATE USER mesuser PASSWORD 'mesuser'"
psql -U postgres -c "CREATE DATABASE sdmes OWNER 'mesuser'"
psql -U postgres -c "ALTER DATABASE sdmes SET search_path TO sdmes"
psql -U mesuser -d sdmes -a -f ./pgschemascript.sql