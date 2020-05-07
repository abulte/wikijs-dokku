# wikijs-dokku

This repo is a dokku-deployable wrapper for wiki.js.

## How it works

It makes use of a `Dockerfile` to add this repo's `config.yml` to the latest code for wiki.js.

`config.yml` contains all of the configuration for the wiki.js instance.  Some config options are hard-coded, and some are brought in as environment variables.

## Environment Variables
Make sure the following environment variables are configured on your dokku app:

* `DATABASE_URL` - Postgres connection string

## Deployment

* Add a new remote called dokku `git remote add dokku dokku@{host}:{appname}`
* Push `git push dokku master`
