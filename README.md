# ENSIME Documentation

The consolidated documentation for ENSIME: ENhanced Scala Interaction Mode for text Editors.

## Setup

Requirements: Ruby, and Bundler (`gem install bundler`)

To view locally:

* `bundle install` installs the required gems into `bundle-vendor/bundle`.
* `bundle exec jekyll server [--watch]` starts the server (watching for changes with `--watch`).

## Hack

### Update the gems

Make sure they match the [versions](https://pages.github.com/versions/) GitHub Pages uses.

### Update the base theme:

```
git remote add hyde git@github.com:poole/hyde.git
git fetch hyde
git merge hyde master
```
