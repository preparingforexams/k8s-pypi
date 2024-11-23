FROM pypiserver/pypiserver:v2.3.1

CMD [ \
  "run", \
  "--hash-algo", "sha256", \
  "--disable-fallback", \
  "--password", ".htpasswd" \
]
