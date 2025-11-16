# AI News Summarizer

A local AI-powered news aggregator that fetches articles from neutral news sources, summarizes them, and analyzes sentiment.

## Features
- Fetch news from multiple RSS feeds (Reuters, AP, BBC, NPR)
- Summarize articles using Hugging Face Transformers
- Perform sentiment analysis (positive/negative/neutral)
- Store articles, summaries, and sentiment in PostgreSQL
- Serve results through a FastAPI backend

## Tech Stack
- **Python** (FastAPI, feedparser, Hugging Face Transformers)
- **PostgreSQL** (Dockerized or local)
- **Docker & Docker Compose** for local development
- **Optional Frontend** for viewing articles

## Setup Instructions

### 1. Clone the repository
```bash
git clone https://github.com/lilysong01/ai-news-summarizer.git
cd ai-news-summarizer
