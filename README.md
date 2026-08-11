# 📚 BookScout – AI-Powered Book Discovery Automation

AI-powered book discovery and recommendation bot using **n8n, Telegram, OpenLibrary API, AI Agents, and PostgreSQL**.

## 🏷️ Technologies

![n8n](https://img.shields.io/badge/n8n-Workflow%20Automation-orange)
![Telegram](https://img.shields.io/badge/Telegram-Bot-blue)
![OpenLibrary](https://img.shields.io/badge/OpenLibrary-API-green)
![AI](https://img.shields.io/badge/AI-Agent-purple)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue)

---

## 📌 Project Overview

**BookScout** is an AI-powered Telegram bot that helps users discover, search, and explore books through a conversational interface.

The project combines **n8n workflow automation**, **Telegram**, the **OpenLibrary API**, and **LLM-powered intent handling** to create an automated book discovery assistant.

Users can interact with the Telegram bot using commands such as:

- `/start` – Start the BookScout bot
- `/help` – Display available commands
- `/search` – Search for books
- `/recommend` – Get AI-powered book recommendations
- 📷 Send a book image for OCR-based processing
- 💬 Send natural-language requests to the AI Agent

The system automatically determines the user's intent and routes the request to the appropriate workflow.

---

## 🎯 Key Features

- 🤖 AI-powered book recommendations
- 🔎 Book search using OpenLibrary API
- 📚 Book metadata and cover retrieval
- 📷 OCR-based book identification
- 💬 Natural-language book discovery
- 🧠 AI Agent fallback for free-form requests
- 🔀 Intent-based workflow routing
- 📱 Telegram chatbot interface
- 🗄️ PostgreSQL-based error logging
- 🚨 Global workflow error handling
- 🔁 Modular n8n sub-workflows
- 🌐 Webhook-based automation
- 🛡️ Centralized error management

---

## 🏗️ System Architecture

```text
                         ┌──────────────────────┐
                         │   Telegram User      │
                         └──────────┬───────────┘
                                    │
                                    ▼
                         ┌──────────────────────┐
                         │   Telegram Trigger  │
                         └──────────┬───────────┘
                                    │
                                    ▼
                         ┌──────────────────────┐
                         │       Switch         │
                         │    Intent Router     │
                         └───────┬──────────────┘
                                 │
             ┌───────────────────┼────────────────────┐
             │                   │                    │
             ▼                   ▼                    ▼
      ┌─────────────┐    ┌─────────────┐     ┌─────────────┐
      │ OCR Workflow│    │Search       │     │Recommend    │
      │             │    │Workflow     │     │Workflow     │
      └─────────────┘    └─────────────┘     └─────────────┘
             │                   │                    │
             │                   ▼                    ▼
             │          ┌────────────────┐   ┌────────────────┐
             │          │ OpenLibrary API│   │ LLM / AI Agent │
             │          └───────┬────────┘   └───────┬────────┘
             │                  │                    │
             └──────────────────┼────────────────────┘
                                ▼
                       ┌──────────────────┐
                       │ Telegram Response│
                       └──────────────────┘

                                │
                                │ Errors
                                ▼
                       ┌──────────────────┐
                       │ Global Error     │
                       │ Handler          │
                       └────────┬─────────┘
                                ▼
                       ┌──────────────────┐
                       │   PostgreSQL     │
                       │   Error Logs     │
                       └──────────────────┘