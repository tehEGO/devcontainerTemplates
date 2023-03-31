#pull base image
FROM squidfunk/mkdocs-material:latest

LABEL maintainer="Carlos Bedia" \
      name="main_container" \
      version="1.0"

COPY . /apps
WORKDIR /apps

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5556

CMD ["mkdocs", "serve"]