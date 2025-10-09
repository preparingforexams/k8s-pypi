FROM docker.io/pypiserver/pypiserver:v2.4.0

RUN apk add --no-cache tini

USER 9898

ENTRYPOINT [ "tini", "--", "/entrypoint.sh" ]
CMD [ \
  "run", \
  "--hash-algo", "sha256", \
  "--disable-fallback", \
  "--password", ".htpasswd" \
]
