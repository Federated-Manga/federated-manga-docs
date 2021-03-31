FROM klakegg/hugo:ext-asciidoctor-onbuild AS hugo

COPY . /src

RUN yarn build

FROM nginx
COPY --from=hugo /target /usr/share/nginx/html