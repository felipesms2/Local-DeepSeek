#!/bin/bash
ollama serve &
sleep 15
ollama pull deepseek-coder
pkill ollama