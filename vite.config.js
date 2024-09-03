import { defineConfig } from 'vite';
import viteRiotPlugin from './vite-plugin-riot3';

export default defineConfig({
  plugins: [viteRiotPlugin()],
});
