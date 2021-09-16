# Stage 1
FROM    node:14

COPY . /app

WORKDIR  /app

COPY package.json ./

RUN npm install 

COPY .    .

ENV PORT=8000

EXPOSE 8000

CMD ["npm",  "start" ]

