# Stage 1
FROM    node:alpine
COPY . /app
WORKDIR  /app
CMD npm run serve

# Stage 2
FROM nginx:latest
COPY --from=node  /app /usr/share/nginx/html



