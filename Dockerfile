FROM manojkarthick/amalgam:v0.1.3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "bash", "/entrypoint.sh" ]
