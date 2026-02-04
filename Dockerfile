FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir uv

ENV PATH="/app/.venv/bin:$PATH"

COPY pyproject.toml .python-version uv.lock ./
RUN uv sync --locked

COPY upload_to_gcs.py .

CMD ["python", "upload_to_gcs.py"]
