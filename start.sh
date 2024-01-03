#!/usr/bin/bash
set -eu

bundle exec rake db:migrate
# https://docs.joinmastodon.org/admin/setup/#admin-cli
RAILS_ENV=production bin/tootctl accounts create \
  "$OWNER_USERNAME" \
  --email "$OWNER_EMAIL" \
  --confirmed \
  --role Owner || true
npx concurrently "bundle exec puma -C config/puma.rb" "bundle exec sidekiq"
