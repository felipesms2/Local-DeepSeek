# Ollama DeepSeek Docker Image

Docker image with DeepSeek model pre-installed running on Ollama API server.

## Run container

```bash
docker run -d -p 11434:11434 felipesms/ollama-deepseek
```

## API Endpoint

The API will be available at:

```
http://localhost:11434
```

## Test API

```bash
curl http://localhost:11434/api/generate -d '{
  "model": "deepseek-coder",
  "prompt": "Explain what Docker is"
}'
```

## List Models

```bash
curl http://localhost:11434/api/tags
```

## Docker Compose Example

```yaml
version: "3.9"

services:
  deepseek:
    image: felipesms/ollama-deepseek
    container_name: deepseek
    ports:
      - "11434:11434"
    restart: unless-stopped
```

## OpenAI Compatible Endpoint

You can use the Ollama OpenAI compatible endpoint:

```
http://localhost:11434/v1/chat/completions
```

## Example Python

```python
import requests

r = requests.post(
    "http://localhost:11434/api/generate",
    json={
        "model": "deepseek-coder",
        "prompt": "Write a hello world in Python"
    }
)

print(r.json())
```

## Image Size

The image already includes the DeepSeek model, so the first run does not download anything.

## Author

Felipedocker push felipesms/ollama-deepseek
