<template>
    <div id="app" class="min-h-screen bg-gray-50">
        <header class="bg-white shadow">
            <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                <h1 class="text-3xl font-bold text-gray-900">
                    Laravel Vue Starter
                </h1>
            </div>
        </header>
        <main>
            <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
                <div class="px-4 py-6 sm:px-0">
                    <div
                        class="border-4 border-dashed border-gray-200 rounded-lg p-8 text-center"
                    >
                        <h2 class="text-2xl font-semibold text-gray-700 mb-4">
                            Welcome to your new project!
                        </h2>
                        <p class="text-gray-600 mb-6">
                            This is a Laravel template with Vue 3 and Tailwind
                            CSS v4 configured and ready to use.
                        </p>
                        <div class="space-y-4">
                            <div
                                class="bg-blue-50 border border-blue-200 rounded-lg p-4"
                            >
                                <h3 class="font-semibold text-blue-800">
                                    Included technologies:
                                </h3>
                                <ul class="text-blue-700 mt-2 space-y-1">
                                    <li>• Laravel 11 with Sail (Docker)</li>
                                    <li>• Vue 3 with Composition API</li>
                                    <li>• Tailwind CSS v4</li>
                                    <li>• Vite for build and hot reload</li>
                                </ul>
                            </div>
                            <div
                                class="bg-green-50 border border-green-200 rounded-lg p-4"
                            >
                                <h3 class="font-semibold text-green-800">
                                    Useful commands:
                                </h3>
                                <ul
                                    class="text-green-700 mt-2 space-y-1 text-sm"
                                >
                                    <li>
                                        •
                                        <code class="bg-green-100 px-1 rounded"
                                            >./vendor/bin/sail up</code
                                        >
                                        - Start services
                                    </li>
                                    <li>
                                        •
                                        <code class="bg-green-100 px-1 rounded"
                                            >./vendor/bin/sail npm run dev</code
                                        >
                                        - Frontend development
                                    </li>
                                    <li>
                                        •
                                        <code class="bg-green-100 px-1 rounded"
                                            >./vendor/bin/sail artisan</code
                                        >
                                        - Laravel commands
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Example Component -->
                    <div class="mt-8">
                        <ExampleComponent title="Interactive Demo" />
                    </div>
                </div>
            </div>
        </main>
    </div>
</template>

<script setup>
// Vue 3 Composition API
import { ref, onMounted } from "vue";
import ExampleComponent from "./ExampleComponent.vue";

const message = ref("Vue is working correctly!");

onMounted(() => {
    console.log("Vue app mounted successfully!");
});
</script>
