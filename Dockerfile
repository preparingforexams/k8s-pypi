FROM pypiserver/pypiserver:v2.3.2

USER 9898

CMD [ \
  "run", \
  "--hash-algo", "sha256", \
  "--disable-fallback", \
  "--password", ".htpasswd" \
]
