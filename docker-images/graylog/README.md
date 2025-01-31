# Graylog Password Generation

- `openssl rand -base64 96 (instead of pwgen -N 1 -s 96)`
    - output: `u6m0VKQxgw8Y5T0E7JDA4RUuOOI9ueU1ZNUpXN/EpihhePF6GETfFrIhbPKbADDL`

- `echo -n "Enter Password: " && head -1 </dev/stdin | tr -d '\n' | shasum -a 256 | cut -d" " -f1` (graylog@123)
    - `output: cc41de147e5c624c6a7c230648545f6d14f82fa0e591148dc96993b3e539abfc`