FROM pypiserver/pypiserver:v2.3.2

RUN apk add --no-cache tini

USER 9898

ENTRYPOINT [ "tini", "--", "/entrypoint.sh" ]
CMD [ \
  "run", \
  "--hash-algo", "sha256", \
  "--disable-fallback", \
  "--password", ".htpasswd" \
]
