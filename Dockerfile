FROM billmccartney/cxmlc
WORKDIR /app
COPY requirements.txt /app/
RUN pip3 install -r requirements.txt
COPY *.py config.ini /app/
COPY server /app/server
ENV CXMLC_CONFIG=/app/config.ini
CMD uvicorn server.server:app --host 0.0.0.0