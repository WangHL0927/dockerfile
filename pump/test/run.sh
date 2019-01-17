#!/bin/bash

# $PWD= project dir
 docker run -it --restart always --name pump-test -v "$PWD":/app -w /app node:8.15.0 node index.js 
