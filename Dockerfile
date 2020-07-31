FROM node

ENV NODE_ENV=production

WORKDIR / scripts

COPY . .

RUN npm install \
  && groupadd app \
  && useradd -g app app \
  && chown -R app:app /scripts

USER app

CMD ["npm", "start"]
