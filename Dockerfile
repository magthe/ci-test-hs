FROM ubuntu:cosmic as base

COPY dest/* /usr/local/bin/

CMD /usr/local/bin/ci-test-hs
