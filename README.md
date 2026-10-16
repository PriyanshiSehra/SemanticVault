# 🧠 SemanticVault

**SemanticVault** is a high-performance semantic search engine built in **C++17**, combining multiple vector search algorithms with local Large Language Models (LLMs) through **Ollama**.

The project provides an interactive web interface for exploring **Approximate Nearest Neighbor (ANN) search, semantic embeddings, vector similarity, and Retrieval-Augmented Generation (RAG)** while comparing different vector search techniques.

> **Project Status:** SemanticVault is an actively evolving project. The repository contains the complete system, including the local Ollama-powered embedding and RAG pipeline. The publicly deployed version is a lightweight demo build focused on the core vector search and visualization functionality.


## 🚀 Live Demo

**[🌐 Open SemanticVault Live Demo](https://semanticvault-production.up.railway.app)**

The live deployment provides a lightweight demonstration of the core SemanticVault search engine and can be explored directly in the browser without any local setup.

### What you can explore in the deployed demo

- ⚡ HNSW vector search
- 🌲 KD-Tree search
- 🔎 Brute Force similarity search
- 🎯 Cosine similarity
- 📊 Interactive vector-space visualization
- 📈 PCA projection
- 🔍 Search across built-in demo vectors
- ⚙️ Algorithm comparison and benchmarking

### About the Deployed Demo

The public deployment is intentionally configured as a **demo environment**.

It does **not** run the local Ollama models because the complete AI pipeline is designed to run locally.

Therefore, the following features require the complete project to be run locally with Ollama:

- 📄 Document ingestion
- 🧠 Local document embeddings
- 🤖 LLM-powered querying
- 🔎 Retrieval-Augmented Generation (RAG)
- 💬 AI-assisted document querying

The deployed version is therefore intended to provide a quick way to explore the core search engine, while the local version demonstrates the complete SemanticVault pipeline.


## 🎥 Project Demo

The following video demonstrates the **complete SemanticVault application running locally**, including the local AI pipeline.

**[▶️ Watch the SemanticVault Project Demo](https://youtu.be/eyaN-p13x5c)**

![SemanticVault Demo](<img width="1847" height="967" alt="image" src="https://github.com/user-attachments/assets/6fe7ce14-c4bc-4ae3-b560-d48b199216f7" />
)

The demo shows:

- Semantic vector search
- HNSW, KD-Tree, and Brute Force search
- Search latency and top-k retrieval
- 2D PCA visualization of the vector space
- Document ingestion
- Local embedding generation using Ollama
- Document retrieval
- LLM-powered querying and RAG

> **Note:** The deployed demo and the project demo video serve different purposes.
>
> 🌐 **Live Demo:** A lightweight browser-based version for exploring the core vector search and visualization features.
>
> 🎥 **Project Demo:** The complete system running locally, including document embedding, Ollama integration, and RAG.


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
| **Ollama** | Local AI model runtime |
| **Llama 3.2** | Local language model for RAG |
| **Nomic Embed Text** | Semantic embedding generation |
| **HTTP Server** | C++ web backend |
| **HTML / CSS / JavaScript** | Interactive frontend |
| **PCA** | Vector-space visualization |


# 🏗️ System Architecture

```text
                         ┌─────────────────────┐
                         │       Browser       │
                         │    Web Interface    │
                         └──────────┬──────────┘
                                    │
                                    ▼
                         ┌─────────────────────┐
                         │    HTTP Server      │
                         │        C++          │
                         └──────────┬──────────┘
                                    │
                  ┌─────────────────┼─────────────────┐
                  │                 │                 │
                  ▼                 ▼                 ▼
            ┌──────────┐      ┌──────────┐     ┌─────────────┐
            │   HNSW   │      │ KD-Tree  │     │ Brute Force │
            └──────────┘      └──────────┘     └─────────────┘
                  │                 │                 │
                  └─────────────────┼─────────────────┘
                                    │
                                    ▼
                         ┌─────────────────────┐
                         │   Vector Search     │
                         │   & Similarity      │
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
                  │nomic-embed-   │     │  llama3.2  │
                  │text           │     │            │
                  └───────┬───────┘     └─────┬──────┘
                          │                   │
                          ▼                   ▼
                     Embeddings            RAG / AI
