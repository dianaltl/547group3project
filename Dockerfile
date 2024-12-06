FROM hugomods/hugo:exts

WORKDIR /src

# Copy only the necessary files for the Hugo site
COPY ./config.toml /src/
COPY ./content /src/content
COPY ./layouts /src/layouts
COPY ./static /src/static
COPY ./themes /src/themes

RUN hugo --minify
