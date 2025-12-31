Example command
```
racadm-secret
```

Example arguments
```
/run/secrets/drac_password
-r
10.10.10.10
-u
root
getsysinfo
```

Example curl
```
curl 'http://localhost:3000/api/execute' \
  -X POST \
  -H 'X-API-Key: your_key' \
  --data-raw '{"command":"racadm-secret","args":["/run/secrets/drac_password","-r","10.10.10.10","-u","root","getsysinfo"]}'
```