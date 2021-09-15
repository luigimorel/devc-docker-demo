# Stage 1
FROM    node:alpine
COPY . /app
WORKDIR  /app
COPY package.json ./

RUN npm install 
COPY .    .
ENV PORT=8000

EXPOSE 8000

CMD ["npm run", "serve" ]

