ARG MASTODON_VERSION
FROM tootsuite/mastodon:${MASTODON_VERSION}
COPY start.sh /start.sh
CMD ["/start.sh"]
