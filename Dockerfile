FROM pypiserver/pypiserver:v1.5.0

CMD [
  "--hash-algo", "sha256",
  "--disable-fallback",
  "-P", ".htpasswd"
]
