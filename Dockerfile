# specify the node base image with your desired version node:<version>
FROM node:lts-alpine

ARG PORT=8000
ENV PORT=${PORT}
EXPOSE ${PORT}
# EXPOSE 3000
WORKDIR /opt/app

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .

# EXPOSE 8000
RUN yarn build

CMD ["sh", "-c", "yarn start -p ${PORT}"]