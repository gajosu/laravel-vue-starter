#!/bin/bash

# Development script for Laravel Vue Starter

set -e

echo ""
echo "🚀 Laravel + Vue + Tailwind Development Mode"
echo "============================================"
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

print_step() {
    echo -e "${PURPLE}[STEP]${NC} $1"
}

# Check if services are running
print_step "Checking Docker services..."
if ! docker-compose ps | grep -q "laravel.test.*Up"; then
    print_status "Starting Docker services..."
    ./vendor/bin/sail up -d
    print_success "Docker services started"
else
    print_success "Docker services are already running"
fi

# Start Vite development server
print_step "Starting development server..."
print_status "Starting Vite with hot reload..."
./vendor/bin/sail npm run dev &

# Wait a moment for Vite to start
sleep 3

print_success "Development mode started successfully!"
echo ""
print_step "📱 Available URLs:"
echo -e "  🌐 ${WHITE}Application:${NC} http://localhost:${APP_PORT:-80}"
echo -e "  📧 ${WHITE}Mailpit:${NC} http://localhost:${FORWARD_MAILPIT_DASHBOARD_PORT:-8025}"
echo -e "  🔍 ${WHITE}Meilisearch:${NC} http://localhost:${FORWARD_MEILISEARCH_PORT:-7700}"
echo ""
print_warning "Press Ctrl+C to stop the development server"
echo ""

# Wait for user to stop
wait
