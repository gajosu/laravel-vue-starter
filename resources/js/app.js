import './bootstrap';
import { createApp } from 'vue';
import ExampleComponent from './components/ExampleComponent.vue';

// Create Vue app and mount the example component
const app = createApp(ExampleComponent, {
    title: 'Inte ractive Vue Component'
});

// Mount to the vue-example container
app.mount('#vue-example');
