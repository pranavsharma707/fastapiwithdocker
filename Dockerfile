FROM python:3.9.0

RUN pip install fastapi uvicorn

COPY  /app .

EXPOSE 80
# CMD [ "python","main.py"]

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]