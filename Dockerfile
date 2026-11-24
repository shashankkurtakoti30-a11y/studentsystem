# Dockerfile
FROM python:3.11-slim

WORKDIR /app

COPY grade_calculator.py test_grade_calculator.py ./

RUN pip install --no-cache-dir pytest

CMD ["sh", "-c", "pytest -v && python grade_calculator.py"]