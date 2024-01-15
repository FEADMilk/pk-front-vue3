<script setup lang="ts">
import { useThemeStore } from './store/useThemeStore';
const themeStore = useThemeStore();

useResizeObserver(document.body, () => {
  const width = window.innerWidth;
  const contentWith = 1200;
  themeStore.$patch({
    rate: width < 1200 ? +(width / contentWith).toFixed(2) : 1
  });
});
</script>

<template>
  <router-view />
</template>

<style scoped></style>
