# 🧠 SemanticVault

**SemanticVault** is a high-performance semantic search engine built in **C++17**, combining multiple vector search algorithms with local Large Language Models (LLMs) through **Ollama**.

The project provides an interactive web interface for exploring **Approximate Nearest Neighbor (ANN) search, semantic embeddings, vector similarity, and Retrieval-Augmented Generation (RAG)** while comparing different vector search techniques.

> **Note:** The project repository contains the complete SemanticVault system, including the Ollama-powered embedding and RAG pipeline. The publicly deployed version is a lightweight **demo build** focused on the core vector search and visualization functionality. The complete system can be run locally with Ollama.


## 🚀 Live Demo

**[🌐 Open SemanticVault Live Demo](https://semanticvault-production.up.railway.app)**

The live deployment provides a lightweight demonstration of the core SemanticVault search engine.

### What you can explore in the deployed demo

- HNSW vector search
- KD-Tree search
- Brute Force similarity search
- Cosine similarity
- Interactive vector-space visualization
- PCA projection
- Search across built-in demo vectors
- Algorithm comparison and benchmarking

### About the Demo Version

The public deployment is intentionally configured as a **demo environment** and does not run the local Ollama models.

Therefore, the following features require the complete project to be run locally with Ollama:

- Document embedding
- Document ingestion using local embeddings
- LLM-powered RAG
- AI-assisted document querying

This separation keeps the public demo lightweight while allowing the complete project to use local LLMs without requiring a cloud-hosted model.


## 🎥 Full Project Demonstration

The complete SemanticVault system, including the **Ollama-powered embedding and RAG pipeline**, is demonstrated in the project video.

> **The deployed demo and the video serve different purposes:**
>
> 🌐 **Live Demo:** Explore the core vector search engine and interactive visualization directly in your browser.
>
> 🎥 **Project Video:** See the complete SemanticVault system running locally, including document embedding, Ollama integration, and RAG functionality.

**Demo video/GIF:** *Coming soon*


# ✨ Features

### 🔍 Vector Search

- ⚡ **HNSW** (Hierarchical Navigable Small World) vector search
- 🌲 **KD-Tree** nearest-neighbor search
- 🔎 **Brute Force** similarity search
- 🎯 **Cosine similarity** based retrieval
- 📊 Algorithm comparison and benchmarking

### 🧠 Semantic Search & AI

- Local semantic embedding generation
- Integration with **Ollama**
- `nomic-embed-text` for document embeddings
- `llama3.2` for LLM-powered querying
- Retrieval-Augmented Generation (**RAG**)
- Semantic document search

### 📈 Visualization

- Interactive vector-space visualization
- 2D **PCA projection** of vector embeddings
- Visual exploration of semantic relationships
- Search-result visualization

### 🌐 Web Interface

- Interactive browser-based interface
- C++ HTTP backend
- Search and document interfaces
- Algorithm selection
- Distance-metric selection
- Configurable Top-K retrieval


# 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| **C++17** | Core search engine and backend |
| **HNSW** | Approximate nearest-neighbor search |
| **KD-Tree** | Spatial nearest-neighbor search |
| **Ollama** | Local LLM runtime |
| **Llama 3.2** | Local language model |
| **Nomic Embed Text** | Semantic embedding generation |
| **HTTP Server** | C++ web backend |
| **HTML / CSS / JavaScript** | Interactive frontend |
| **PCA** | Vector-space visualization |


# 🏗️ System Architecture

```text
                         ┌─────────────────────┐
                         │      Browser        │
                         │  Web Interface      │
                         └──────────┬──────────┘
                                    │
                                    ▼
                         ┌─────────────────────┐
                         │    HTTP Server      │
                         │       C++           │
                         └──────────┬──────────┘
                                    │
                    ┌───────────────┼───────────────┐
                    │               │               │
                    ▼               ▼               ▼
              ┌──────────┐   ┌──────────┐   ┌────────────┐
              │   HNSW   │   │ KD-Tree  │   │ Brute Force│
              └──────────┘   └──────────┘   └────────────┘
                    │               │               │
                    └───────────────┼───────────────┘
                                    │
                                    ▼
                         ┌─────────────────────┐
                         │   Vector Search     │
                         │  & Similarity       │
                         └──────────┬──────────┘
                                    │
                          Local AI Pipeline
                                    │
                                    ▼
                         ┌─────────────────────┐
                         │       Ollama        │
                         └──────────┬──────────┘
                                    │
                         ┌──────────┴──────────┐
                         ▼                     ▼
                 ┌───────────────┐     ┌────────────┐
                 │nomic-embed-   │     │ llama3.2   │
                 │text           │     │            │
                 └───────────────┘     └────────────┘
                         │                     │
                         ▼                     ▼
                    Embeddings              RAG / AI
