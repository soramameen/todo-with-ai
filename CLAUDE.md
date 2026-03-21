# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Structure

The Rails app lives in the `todo_app/` subdirectory. All commands below should be run from `todo_app/`.

## Commands

```bash
# Development
bin/dev                        # Start development server
bin/rails console              # Rails console

# Database
bin/rails db:migrate           # Run migrations
bin/rails db:reset             # Reset database

# Testing
bundle exec rspec              # Run all tests
bundle exec rspec spec/path/to/file_spec.rb  # Run a single test file

# Linting
bundle exec rubocop            # Run RuboCop
bundle exec rubocop -a         # Auto-correct issues

# Routes
bin/rails routes               # List all routes
```

## Architecture

A minimal Rails 8.1 CRUD app with a single `todos` resource (title, description).

- **Routes:** `resources :todos` in `config/routes.rb`
- **Controller:** `app/controllers/todos_controller.rb` — standard RESTful actions (index, show, new, create, edit, update, destroy)
- **Model:** `app/models/todo.rb` — minimal, extends ApplicationRecord
- **Views:** ERB templates in `app/views/todos/`
- **Asset pipeline:** Propshaft (no Sprockets)
- **Testing:** RSpec Rails (`spec/`)
- **Database:** SQLite3
