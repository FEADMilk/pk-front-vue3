<template>
  <Swiper :items="items" height="36rem"></Swiper>
</template>

<script setup lang="ts">
import { registerSW } from 'virtual:pwa-register';
import type { SwiperItemType } from '../components/types';
import bg from '@/assets/images/bg.png';

const items: SwiperItemType[] = [
  {
    image: bg,
    title: '传播技术的种子',
    subTitle: '让技术没有门槛,让沟通没有障碍'
  },
  {
    image: bg
  },
  {
    image: bg
  },
  {
    image: bg
  },
  {
    image: bg
  }
];

onMounted(() => {
  registerSW({
    immediate: true,
    onRegisteredSW(_url, registration) {
      setInterval(() => {
        registration && registration.update();
      }, 3600000);
    }
  });
});
</script>

<style scoped></style>
