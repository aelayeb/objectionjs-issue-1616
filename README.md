# ObjectionJS: Instance method $relatedQuery doesn't reuse knex instance
Minimal case to demonstrate the ObjectionJS issue: https://github.com/Vincit/objection.js/issues/1616

Tested with:
nodejs: v12.13.0
MariaDB: 10.1.16

# Requirement
A working MySQL/MariaDB database

# Install
- Import draft.sql into your database server
- Adjust connection string in index.js:3 according to your setup
- Execute `npm install`
- Execute `nodejs index.js`
