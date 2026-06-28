# 🧠 SemanticVault

SemanticVault is a high-performance semantic search engine built in C++ that combines modern vector search algorithms with local Large Language Models (LLMs) through Ollama.

This project provides an interactive web interface for exploring Approximate Nearest Neighbor (ANN) search, semantic embeddings, and Retrieval-Augmented Generation (RAG) concepts while comparing multiple vector search techniques.

> **Project Status:** Actively being extended with persistent storage, document ingestion, PDF support, and performance benchmarking.

---

# Features

* ⚡ HNSW (Hierarchical Navigable Small World) vector search
* 🌲 KD-Tree nearest neighbor search
* 🔍 Brute Force similarity search for comparison
* 🧠 Local LLM integration using Ollama
* 📄 Semantic document embedding
* 📊 Interactive visualization dashboard
* 📈 PCA projection of vector embeddings
* 🎯 Cosine similarity based retrieval
* 🌐 Web-based user interface

---

# Tech Stack

* C++17
* Ollama
* Llama 3.2
* Nomic Embed Text
* HTTP Server
* HTML / CSS / JavaScript

---

# System Architecture

```
Browser
      │
      ▼
HTTP Server (C++)
      │
      ├── HNSW Index
      ├── KD Tree
      ├── Brute Force Search
      │
      ▼
Ollama
      │
      ├── nomic-embed-text
      └── llama3.2
```

---

# Current Capabilities

* Compare multiple ANN algorithms
* Perform semantic similarity search
* Generate embeddings locally
* Visualize vector space in 2D
* Query documents using local LLMs

---

# Upcoming Improvements

* PDF Upload Support
* Persistent Vector Storage
* CSV & Markdown Import
* Hybrid Search
* Authentication
* Better Performance Benchmarking
* Larger Real-World Datasets

---

# Getting Started

## Prerequisites

* MSYS2 / MinGW-w64
* Ollama
* Llama 3.2
* nomic-embed-text

## Compile

```bash
g++ -std=c++17 -O2 main.cpp -o db.exe -lws2_32
```

## Run

Start Ollama:

```bash
ollama serve
```

Then start the server:

```bash
./db.exe
```

Open:

```
http://localhost:8080
```

---

# Learning Goals

This project explores:

* Approximate Nearest Neighbor Search
* Vector Databases
* Semantic Search
* Embedding Models
* Local LLM Deployment
* Retrieval-Augmented Generation (RAG)

---

# Future Development

SemanticVault is an actively evolving project. Current development focuses on transforming the application into a production-oriented semantic search engine with persistent storage, richer document ingestion, and enhanced benchmarking capabilities.
