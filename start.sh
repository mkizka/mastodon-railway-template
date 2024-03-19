#!/usr/bin/bash
set -eu

export RAILS_ENV=production

bundle exec rake db:migrate
# https://docs.joinmastodon.org/admin/setup/#admin-cli
bin/tootctl accounts create \
  "$OWNER_USERNAME" \
  --email "$OWNER_EMAIL" \
  --confirmed \
  --role Owner || true
# https://github.com/mastodon/mastodon/releases/tag/v4.2.8
bin/tootctl accounts modify --approve

npx concurrently "bundle exec puma -C config/puma.rb" "bundle exec sidekiq"
