---
layout: post
title: "The Hunt for H100s"
categories: Dev
---


[ComputeWatch](https://computewatch.llm-utils.org)

[GPUs LLM Utils](https://gpus.llm-utils.org/)

Lambda Labs
- Never available.
- Ondemand H100 PCIe (`26 vCPUs, 200 GiB RAM, 1 TiB SSD`) at $2.5 per hour

RunPod
- Good availability.
- Spot H100 PCIe (`12 vCPU 125 GB RAM`) at $2.5 per hour.
- Ondemand H100 SMX5 is expensive.
- Differentiates container and workspace storages, which is annoying.

DataCrunch
- Bad availability.
- Spot H100 SMX5 (`30 CPU•120GB RAM•80GB GPU VRAM`) at a good price.
- RX: 100 (+-20) MiB/s, TX: 22 (+-5) MiB/s, GPU: 1980MHz, MEM: 2619MHz
