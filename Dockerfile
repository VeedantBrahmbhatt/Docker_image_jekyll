FROM node 

WORKDIR /ia2cloud




COPY . .

CMD ["node", "ia2cloud.js"]
