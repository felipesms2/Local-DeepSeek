FROM ollama/ollama

COPY setup.sh /setup.sh
RUN chmod +x /setup.sh
RUN /setup.sh

CMD ["serve"]