FROM node:14.15 AS build

WORKDIR /src
COPY . /src

RUN npm ci

RUN npm run build

FROM gcr.io/distroless/nodejs-debian10
WORKDIR /src
COPY --from=build /src ./
ENV PORT 8080

CMD ["__sapper__/build/index.js"]