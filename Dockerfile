FROM manojkarthick/amalgam:v0.1.2

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
