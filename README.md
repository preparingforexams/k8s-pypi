# k8s-pypi

## Editing .htpasswd file

- Get the current file from the credentials k8s secret
  - `kubectl -n prep-pypi get secret credentials -o json | jq -r '.data.access_file' | base64 -d > .htpasswd`
- Either:
  - Remove a user from the file (that's easy just do it in the text file tbh)
  - Install the htpasswd tool (e.g. `apt install apache2-utils`) to update and add users
- Adding/editing a user's password (`-B` for bcrypt): `htpasswd -B .htpasswd <username>`
- Encode the file: `cat .htpasswd | base64 -w0`
- Update the `ACCESS_FILE_B64` secret with the encoded value
