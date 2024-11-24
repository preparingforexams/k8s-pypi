FROM pypiserver/pypiserver:v2.3.2

CMD [ \
  "run", \
  "--hash-algo", "sha256", \
  "--disable-fallback", \
  "--password", ".htpasswd" \
]
