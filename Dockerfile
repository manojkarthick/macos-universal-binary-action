FROM manojkarthick/amalgam:v0.1.4

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "bash", "/entrypoint.sh" ]
