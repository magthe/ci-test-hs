FROM fpco/stack-build:lts-10.5

WORKDIR /app

COPY stack.yaml stack.yaml
COPY package.yaml package.yaml
COPY LICENSE LICENSE
RUN stack setup

RUN stack install --only-dependencies

COPY Main.hs Main.hs
RUN stack install

CMD stack exec ci-test-hs
