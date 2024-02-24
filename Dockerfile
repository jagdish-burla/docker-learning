From node:16-alpine as builder
WORKDIR "/app"
Copy package.json .
run npm install
copy . .
cmd npm run build

from nginx
copy --from=builder /app/build /usr/share/nginx/html