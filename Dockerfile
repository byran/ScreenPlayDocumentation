FROM python:3-alpine as DOCBUILD

COPY . /build

WORKDIR /build
RUN python3 -m pip install -r requirements.txt

WORKDIR /build/docs
RUN sphinx-build -M html source build

FROM nginx

COPY --from=DOCBUILD /build/docs/build/html/ /usr/share/nginx/html
