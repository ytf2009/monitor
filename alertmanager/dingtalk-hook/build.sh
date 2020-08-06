#!/bin/bash
docker build -t="reg.chebai.org/paas/dingtalk-hook:latest" .
docker push reg.chebai.org/paas/dingtalk-hook:latest
