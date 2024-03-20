FROM node:18-alpine as xyu
WORKDIR /backend
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM node:18-alpine as roBHo
WORKDIR /backend

COPY --from=xyu /backend /backend/

EXPOSE 4000

CMD ["npm", "run", "start"]
