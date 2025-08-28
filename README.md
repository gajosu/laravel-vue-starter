# Laravel + Vue + Tailwind Template

A modern Laravel template with Vue 3, Tailwind CSS v4, and Docker (Sail) for rapid development.

## 🚀 Features

-   **Laravel 11** - Latest Laravel framework
-   **Vue 3** - Composition API with modern reactivity
-   **Tailwind CSS v4** - Latest version with new features
-   **Vite** - Fast build tool and development server
-   **Docker (Sail)** - Complete development environment
-   **MySQL 8.0** - Database
-   **Redis** - Caching and sessions
-   **Meilisearch** - Fast search engine
-   **Mailpit** - Email testing
-   **Selenium** - Browser testing

## 📋 Prerequisites

-   Docker Desktop
-   Git
-   Make (optional, for convenience commands)

## ⚡ Quick Start

### Option 1: One-click setup (Recommended)

```bash
# Clone the repository
git clone <your-repo-url>
cd <project-name>

# Run the setup script
./setup.sh
```

### Option 2: Manual setup

```bash
# Clone the repository
git clone <your-repo-url>
cd <project-name>

# Install dependencies
make install

# Setup the project
make setup
```

### Option 3: Using Make commands

```bash
# See all available commands
make help

# Install dependencies
make install

# Complete setup
make setup

# Development mode
make dev
```

## 🛠️ Development

### Starting the development environment

```bash
# Start all services
make up

# Start development mode (Sail + Vite)
make dev
```

### Available URLs

-   **Application**: http://localhost
-   **Mailpit**: http://localhost:8025
-   **Meilisearch**: http://localhost:7700
-   **Redis**: localhost:6379
-   **MySQL**: localhost:3306

### Useful Commands

```bash
# Laravel commands
./vendor/bin/sail artisan migrate
./vendor/bin/sail artisan make:controller ExampleController
./vendor/bin/sail artisan make:model Example -m

# Frontend development
./vendor/bin/sail npm run dev
./vendor/bin/sail npm run build

# Docker management
make up      # Start services
make down    # Stop services
make restart # Restart services
make logs    # View logs

# Cache management
make clean   # Clear all caches
```

## 📁 Project Structure

```
├── app/                    # Laravel application logic
├── resources/
│   ├── css/
│   │   └── app.css        # Tailwind CSS v4 configuration
│   ├── js/
│   │   ├── app.js         # Main JavaScript entry point
│   │   ├── bootstrap.js   # Bootstrap file
│   │   └── components/    # Vue components
│   │       └── App.vue    # Main Vue component
│   └── views/
│       └── welcome.blade.php  # Main Blade template
├── routes/
│   └── web.php            # Web routes
├── docker-compose.yml     # Docker services configuration
├── vite.config.js         # Vite configuration
├── package.json           # NPM dependencies
├── composer.json          # Composer dependencies
├── Makefile              # Convenience commands
└── setup.sh              # One-click setup script
```

## 🎨 Frontend Development

### Vue Components

Vue components are located in `resources/js/components/`. The main app is mounted in `resources/js/app.js`.

### Tailwind CSS v4

This template uses Tailwind CSS v4 with the new `@import 'tailwindcss'` syntax. The configuration is in `resources/css/app.css`.

### Hot Reload

Vite provides hot reload for both Vue components and CSS changes. Just run:

```bash
make dev
```

## 🐳 Docker Services

The template includes the following services:

-   **laravel.test**: Main Laravel application (PHP 8.4)
-   **mysql**: MySQL 8.0 database
-   **redis**: Redis for caching
-   **meilisearch**: Fast search engine
-   **mailpit**: Email testing interface
-   **selenium**: Browser testing

## 🔧 Configuration

### Environment Variables

Copy `.env.example` to `.env` and configure your environment:

```bash
cp .env.example .env
```

Key variables to configure:

-   `APP_NAME`: Your application name
-   `APP_URL`: Your application URL
-   `DB_DATABASE`: Database name
-   `DB_USERNAME`: Database username
-   `DB_PASSWORD`: Database password

### Database

The MySQL database is automatically created and configured. You can access it at `localhost:3306`.

### Email Testing

Use Mailpit to test emails during development. Access the interface at http://localhost:8025.

## 🧪 Testing

```bash
# Run PHP tests
./vendor/bin/sail test

# Run browser tests
./vendor/bin/sail dusk
```

## 📦 Production Deployment

1. Build the assets:

```bash
make build
```

2. Set up your production environment variables
3. Run migrations:

```bash
./vendor/bin/sail artisan migrate --force
```

4. Configure your web server to serve the application

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

## 🙏 Acknowledgments

-   [Laravel](https://laravel.com/) - The PHP framework
-   [Vue.js](https://vuejs.org/) - The progressive JavaScript framework
-   [Tailwind CSS](https://tailwindcss.com/) - A utility-first CSS framework
-   [Laravel Sail](https://laravel.com/docs/sail) - Docker development environment
-   [Vite](https://vitejs.dev/) - Next generation frontend tooling

---

**Happy coding! 🚀**
