# Uptime Calculator

This is the web-app that will hopefully replace the usage of Google
spreadsheets and docs for uptime management. We want the following basic 
features:

* Be able to create features, services, and incidents.
* Be able to search for features, services and incidents easily.
* Comment threads on each incidents, for discussion purposes (think of it as a mailing list)
* Link an incident with a firefighting task in Asana.

Some nice to have features will be the following:

* Nice UI. Headers, footers, bootstrap, et al.

## Development

Clone the repo and do a `bundle install`.

In order to run the app locally, you need to install PostgreSQL. For Mac that usually just a 
`brew install postgresql` and then after installing you would probably have to do
`brew services start postgresql`. 

We recommend downloading pgAdmin4 and using that to manage your local PSQL database. Looking at the
`config/database.yml`, you will have to create the dev database user and password (called a `role` in pg). 

Once this is done, run the migrations:

```bash
$ bundle exec rake db:migrate
```

You may or may not have to run `bundle exec rake db:setup` before/after this. 

Finally, to run the app:

```bash
$ bundle exec rails server
```