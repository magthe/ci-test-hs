FROM fpco/stack-build:lts-13

WORKDIR /app

COPY stack.yaml stack.yaml
COPY package.yaml package.yaml
COPY LICENSE LICENSE

RUN stack --no-terminal setup
RUN stack --no-terminal install --only-dependencies

COPY Main.hs Main.hs

RUN stack --no-terminal install

CMD stack exec ci-test-hs
