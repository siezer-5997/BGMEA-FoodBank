FROM node:14
WORKDIR /code
ENV PORT 80
COPY package.json /code/package.json
RUN rm -rf node_modules && rm -f package-lock.json
RUN npm install
COPY . /code
CMD ["node", "app.js"]
EXPOSE 8080
