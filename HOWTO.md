# How To Run Locally

## Build Command
- `cd` into the `chatterbox` directory and run: `docker build -t chatterbox:v2 .`

## Run Command

- Huggingface caches all downloaded models in `~/.cache/huggingface` so make sure to map `huggingface` dir to avoid re-downloading every time.

```bash
docker run -p 5523:5523 --rm \
--name chatter \
-v ~/.cache/huggingface:/root/.cache/huggingface \
-it chatterbox:v2
```
