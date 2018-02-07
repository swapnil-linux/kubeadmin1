openssl genrsa -out devuser1.key 2048
openssl req -new -key devuser1.key -out devuser1.csr -subj "/CN=devuser1/O=dev"
openssl x509 -req -in devuser1.csr \
  -CA /etc/kubernetes/pki/ca.crt \
  -CAkey /etc/kubernetes/pki/ca.key \
  -CAcreateserial -out devuser1.crt -days 45



