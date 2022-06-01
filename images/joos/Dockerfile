FROM node:12-alpine

RUN apk update && \
  apk add git

WORKDIR /app

RUN git clone https://github.com/PhotoPaul/JoOS.git .

RUN npm install -g @angular/cli@latest
RUN npm install

# CMD ng serve --host "0.0.0.0" --disable-host-check
CMD ["ng","serve","--host", "0.0.0.0", "--disable-host-check"]

EXPOSE 4200