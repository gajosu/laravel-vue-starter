# Laravel Vue Starter

A modern Laravel + Vue + Tailwind starter template with Docker for rapid development.

[![Use this template](https://img.shields.io/badge/Use%20this%20template-000000?style=for-the-badge&logo=github)](https://github.com/gajosu/laravel-vue-starter/generate)
[![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)](https://laravel.com/)
[![Vue.js](https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vue.js&logoColor=4FC08D)](https://vuejs.org/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white)](https://tailwindcss.com/)

## 🚀 Quick Start

1. **Click "Use this template"** above
2. **Clone your new repository**
3. **Run the setup script:**
    ```bash
    make setup
    # Or use the following command
    ./setup.sh
    ```
4. **Start developing!** 🎉

## ✨ Features

### 🎯 **Modern Stack**

-   **Laravel 11** - Latest Laravel framework with Sail
-   **Vue 3** - Composition API with modern reactivity
-   **Tailwind CSS v4** - Latest version with new features
-   **Vite** - Lightning-fast build tool and dev server

### 🐳 **Docker Environment**

-   **Complete development stack** with Sail
-   **MySQL 8.0** - Database
-   **Redis** - Caching and sessions
-   **Meilisearch** - Fast search engine
-   **Mailpit** - Email testing interface
-   **Selenium** - Browser testing

### 🛠️ **Developer Experience**

-   **One-click setup** with `make setup` or `./setup.sh`
-   **Hot reload** for Vue and CSS
-   **Convenience commands** with Makefile
-   **VS Code configuration** included
-   **Production-ready** configuration

## 📋 Prerequisites

-   Docker Desktop
-   Git
-   Make (optional, for convenience commands)

## 🛠️ Development

### Starting the development environment

```bash
# Complete setup (recommended for first time)
make setup

# Or use the following command
./setup.sh

# Development mode
make dev
```

### Available URLs

-   🌐 **Application**: http://localhost
-   📧 **Mailpit**: http://localhost:8025
-   🔍 **Meilisearch**: http://localhost:7700
-   📊 **Redis**: localhost:6379
-   🗄️ **MySQL**: localhost:3306

### Useful Commands

```bash
# Development
make dev          # Start development mode
make up           # Start services only
make down         # Stop services
make logs         # View logs

# Laravel
./vendor/bin/sail artisan migrate
./vendor/bin/sail artisan make:controller ExampleController
./vendor/bin/sail artisan make:model Example -m

# Frontend
./vendor/bin/sail npm run dev
./vendor/bin/sail npm run build

# Maintenance
make clean        # Clear all caches
make restart      # Restart services
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
│   │       ├── App.vue    # Main Vue component
│   │       └── ExampleComponent.vue  # Example component
│   └── views/
│       └── welcome.blade.php  # Main Blade template
├── routes/
│   └── web.php            # Web routes
├── docker-compose.yml     # Docker services configuration
├── vite.config.js         # Vite configuration
├── package.json           # NPM dependencies
├── composer.json          # Composer dependencies
├── Makefile              # Convenience commands
├── setup.sh              # One-click setup script
└── scripts/
    └── dev.sh            # Development script
```

## 🎨 Frontend Development

### Vue Components

Vue components are located in `resources/js/components/`. The main app is mounted in `resources/js/app.js`.

**Example component included:**

-   Interactive counter demo
-   Vue 3 Composition API examples
-   Tailwind CSS styling

### Tailwind CSS v4

This template uses Tailwind CSS v4 with the new `@import 'tailwindcss'` syntax. The configuration is in `resources/css/app.css`.

### Hot Reload

Vite provides instant hot reload for both Vue components and CSS changes:

```bash
make dev
```

## 🐳 Docker Services

The template includes a complete development environment:

-   **laravel.test**: Main Laravel application (PHP 8.4)
-   **mysql**: MySQL 8.0 database
-   **redis**: Redis for caching
-   **meilisearch**: Fast search engine
-   **mailpit**: Email testing interface
-   **selenium**: Browser testing

## 🔧 Configuration

### Environment Variables

The setup script automatically copies `.env.example` to `.env`. Key variables:

-   `APP_NAME`: Your application name
-   `APP_URL`: Your application URL
-   `DB_DATABASE`: Database name
-   `DB_USERNAME`: Database username
-   `DB_PASSWORD`: Database password

### Database

The MySQL database is automatically created and configured during setup.

### Email Testing

Use Mailpit to test emails during development at http://localhost:8025.

## 🧪 Testing

```bash
# Run PHP tests
./vendor/bin/sail test

# Run browser tests
./vendor/bin/sail dusk
```

## 📦 Production Deployment

1. **Build assets:**

    ```bash
    make build
    ```

2. **Set up production environment variables**

3. **Run migrations:**

    ```bash
    ./vendor/bin/sail artisan migrate --force
    ```

4. **Configure your web server**

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

_This template is designed to get you up and running quickly with a modern Laravel + Vue + Tailwind stack._
