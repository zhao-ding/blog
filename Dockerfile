ARG pandoc_version

FROM pandoc/latex:2.9.2.1

# install python
RUN apk add make \
    python3 \
    py3-psutil \
    && python3 -m pip install --upgrade pip \
    && pip3 install \
    pandoc-eqnos \
    pandoc-fignos \
    pandoc-secnos \
    pandoc-tablenos