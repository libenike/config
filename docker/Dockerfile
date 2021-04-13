ARG platform
FROM $platform
RUN useradd --create-home --shell /bin/bash user
USER user
WORKDIR /home/user
COPY ./ /home/user/config
