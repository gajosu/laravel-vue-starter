#!/bin/bash

# Laravel Vue Starter Setup Script
# This script sets up the complete development environment

set -e

echo ""
echo "🚀 Laravel Vue Starter Setup"
echo "=========================================="
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

print_header() {
    echo -e "${CYAN}$1${NC}"
}

# Function to wait for MySQL to be ready
wait_for_mysql() {
    print_status "Waiting for MySQL to be ready..."
    local timeout=60
    local counter=0

    while [ $counter -lt $timeout ]; do
        if docker exec festival-cortos-mysql-1 mysqladmin ping -h localhost -u root -p${DB_PASSWORD:-password} --silent 2>/dev/null; then
            print_success "MySQL is ready!"
            return 0
        fi

        counter=$((counter + 5))
        print_status "Waiting for MySQL... ($counter/$timeout seconds)"
        sleep 5
    done

    print_error "Timeout waiting for MySQL. Check logs with: make logs"
    return 1
}

# Check if Docker is running
print_step "Checking Docker..."
if ! docker info > /dev/null 2>&1; then
    print_error "Docker is not running. Please start Docker and try again."
    exit 1
fi
print_success "Docker is running"

# Check if .env file exists
print_step "Checking .env file..."
if [ ! -f .env ]; then
    print_warning ".env file not found. Copying .env.example..."
    cp .env.example .env
    print_success ".env file created"
else
    print_success ".env file found"
fi

# Install Composer dependencies
print_step "Installing Composer dependencies..."
print_status "Downloading PHP dependencies..."
docker run --rm -v $(pwd):/app -w /app composer:latest composer install --no-interaction --no-progress
print_success "Composer dependencies installed"

# Install NPM dependencies
print_step "Installing NPM dependencies..."
print_status "Downloading Node.js dependencies..."
docker run --rm -v $(pwd):/app -w /app node:20 npm install
print_success "NPM dependencies installed"

# Generate application key
print_step "Configuring Laravel..."
print_status "Generating application key..."
./vendor/bin/sail artisan key:generate --no-interaction
print_success "Application key generated"

# Start Docker services
print_step "Starting Docker services..."
print_status "Starting containers..."
./vendor/bin/sail up -d
print_success "Docker services started"

# Wait for MySQL to be ready
print_step "Verifying services..."
if ! wait_for_mysql; then
    exit 1
fi

# Run migrations
print_step "Setting up database..."
print_status "Running migrations..."
./vendor/bin/sail artisan migrate --force --no-interaction
print_success "Migrations completed"

# Build assets
print_step "Building assets..."
print_status "Compiling frontend..."
./vendor/bin/sail npm run build
print_success "Assets built"

# Set proper permissions
print_step "Setting up permissions..."
print_status "Creating symbolic links..."
./vendor/bin/sail artisan storage:link
print_success "Permissions configured"

# Final success message
echo ""
print_header "🎉 Setup completed successfully!"
echo "=================================="
echo ""
print_success "Your project is ready for development!"
echo ""
print_header "📱 Available URLs:"
echo -e "  🌐 ${WHITE}Application:${NC} http://localhost"
echo -e "  📧 ${WHITE}Mailpit:${NC} http://localhost:8025"
echo -e "  🔍 ${WHITE}Meilisearch:${NC} http://localhost:7700"
echo -e "  📊 ${WHITE}Redis:${NC} localhost:6379"
echo -e "  🗄️  ${WHITE}MySQL:${NC} localhost:3306"
echo ""
print_header "📝 Useful commands:"
echo -e "  ${YELLOW}make dev${NC}     - Development mode (Sail + Vite)"
echo -e "  ${YELLOW}make up${NC}      - Start services"
echo -e "  ${YELLOW}make down${NC}    - Stop services"
echo -e "  ${YELLOW}make logs${NC}    - View logs"
echo -e "  ${YELLOW}make clean${NC}   - Clear cache"
echo ""
print_success "Your project is ready for development!"
echo ""
