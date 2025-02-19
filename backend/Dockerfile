FROM node:18-alpine

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app
COPY package.json package-lock.json ./

RUN chown -R appuser:appgroup /app

USER appuser
RUN npm install

COPY --chown=appuser:appgroup . ./

EXPOSE 3001

CMD ["npm", "start"]