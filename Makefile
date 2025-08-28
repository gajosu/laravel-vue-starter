.PHONY: help install setup dev build up down restart logs clean

# Default target
help:
	@echo "Laravel Vue Starter - Available commands:"
	@echo ""
	@echo "  setup      - Complete project setup (recommended)"
	@echo "  dev        - Run in development mode (Sail + Vite)"
	@echo "  build      - Build assets for production"
	@echo "  up         - Start Docker services"
	@echo "  down       - Stop Docker services"
	@echo "  restart    - Restart services"
	@echo "  logs       - View service logs"
	@echo "  clean      - Clear cache and logs"
	@echo ""

# Setup complete project (recommended)
setup:
	@echo "🚀 Starting complete project setup..."
	@chmod +x setup.sh
	@./setup.sh

# Development mode
dev:
	@echo "🚀 Starting development mode..."
	@chmod +x scripts/dev.sh
	@./scripts/dev.sh

# Build for production
build:
	@echo "Building assets for production..."
	./vendor/bin/sail npm run build

# Start services
up:
	@echo "Starting services..."
	./vendor/bin/sail up -d

# Stop services
down:
	@echo "Stopping services..."
	./vendor/bin/sail down

# Restart services
restart:
	@echo "Restarting services..."
	./vendor/bin/sail restart

# View logs
logs:
	./vendor/bin/sail logs -f

# Clean cache and logs
clean:
	@echo "Clearing cache and logs..."
	./vendor/bin/sail artisan cache:clear
	./vendor/bin/sail artisan config:clear
	./vendor/bin/sail artisan route:clear
	./vendor/bin/sail artisan view:clear
	@echo "✅ Cache cleared"
