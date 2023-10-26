FROM ctfd/ctfd

# WORKDIR /opt/CTFd
# ctfd in /opt/CTFd/CTFd
COPY ctfd-writeups CTFd/plugins/ctfd-writeups
COPY serve.py serve.py

ENV PYTHONUNBUFFERED 1
ENTRYPOINT ["python", "serve.py"]
EXPOSE 4000