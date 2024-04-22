---
layout: post
title: "The Hunt for H100s"
categories: Dev
---


[ComputeWatch](https://computewatch.llm-utils.org)

[GPUs LLM Utils](https://gpus.llm-utils.org/)

Lambda Labs
- Bad availability.
- H100 PCIe
  - 26 vCPUs, 200 GB RAM, 1 TB SSD
  - On demand: $2.5/hr
- H100 SMX5
  - Minimum starts at 8 GPUs

RunPod
- Good availability.
- H100 PCIe
  - 12 vCPUs, 125 GB RAM
  - On demand: $3.4/hr
  - Spot: $2.5/hr
  - RX: 80~100 MiB/s, TX: 13~15 MiB/s, GPU: 1755MHz, MEM: 1593MHz
- H100 SMX5
  - 24 vCPUs 251 GB RAM
  - On demand: $4.7/hr
- Container storage is not persistent

DataCrunch
- Low availability.
- H100 SMX5
  - 30 vCPUs 120 GB RAM
  - On demand: $3.8/hr
  - Spot: $1.9/hr
  - RX: 80~120 MiB/s, TX: 18~26 MiB/s, GPU: 1980MHz, MEM: 2619MHz
- EU servers
