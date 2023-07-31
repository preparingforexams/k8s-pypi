FROM pypiserver/pypiserver:v1.5.2

CMD [ \
  "run", \
  "--hash-algo", "sha256", \
  "--disable-fallback", \
  "--password", ".htpasswd" \
]
