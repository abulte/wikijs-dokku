# wikijs-dokku

This repo is a dokku-deployable wrapper for wiki.js.

## How it works

It makes use of a `Dockerfile` to add this repo's `config.yml` to the latest code for wiki.js.

`config.yml` contains all of the configuration for the wiki.js instance.  Some config options are hard-coded, and some are brought in as environment variables.

## Environment Variables
Make sure the following environment variables are configured on your dokku app:

* `DATABASE_URL` - Postgres connection string

## Deployment

### Create app and database on dokku

On the dokku server:

```
dokku apps:create doc
```

```
dokku plugin:install https://github.com/dokku/dokku-postgres.git
dokku postgres:create doc
dokku postgres:link doc doc
```

### Deploy app

From your local copy:

```
git remote add dokku dokku@{host}:doc
git push dokku master
```

### Fix port mapping

Because of http://dokku.viewdocs.io/dokku/networking/port-management/#applications-using-expose.

On the dokku server:

```
dokku proxy:ports-add doc http:80:3000
dokku proxy:ports-remove doc http:3000:3000
dokku proxy:ports-remove doc http:3443:3443
```

### Get a letsencrypt certificate

```
dokku plugin:install https://github.com/dokku/dokku-letsencrypt.git
dokku letsencrypt doc
```
