<template>
    <div class="bg-white rounded-lg shadow-md p-6 max-w-md mx-auto">
        <h3 class="text-lg font-semibold text-gray-800 mb-4">
            {{ title }}
        </h3>

        <div class="space-y-4">
            <div class="flex items-center space-x-3">
                <button
                    @click="increment"
                    class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-lg transition-colors"
                >
                    Increment
                </button>
                <span class="text-2xl font-bold text-gray-700">{{
                    count
                }}</span>
                <button
                    @click="decrement"
                    class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-lg transition-colors"
                >
                    Decrement
                </button>
            </div>

            <div class="bg-gray-50 rounded-lg p-3">
                <p class="text-sm text-gray-600">
                    This is an example component that demonstrates:
                </p>
                <ul class="text-sm text-gray-600 mt-2 space-y-1">
                    <li>• Vue 3 reactivity</li>
                    <li>• Composition API</li>
                    <li>• Events and methods</li>
                    <li>• Styling with Tailwind CSS</li>
                </ul>
            </div>

            <div
                v-if="count > 5"
                class="bg-green-50 border border-green-200 rounded-lg p-3"
            >
                <p class="text-green-800 text-sm">
                    Excellent! You've incremented the counter more than 5 times.
                </p>
            </div>
        </div>
    </div>
</template>

<script setup>
import { ref, computed } from "vue";

// Props
const props = defineProps({
    title: {
        type: String,
        default: "Example Component",
    },
});

// Reactive state
const count = ref(0);

// Computed properties
const isHighCount = computed(() => count.value > 10);

// Methods
const increment = () => {
    count.value++;
};

const decrement = () => {
    if (count.value > 0) {
        count.value--;
    }
};
</script>
