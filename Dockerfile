FROM    node:14

COPY . /app 

WORKDIR  /app

COPY package.json ./

RUN npm install 


ENV PORT=8000


CMD ["npm",  "start" ]

