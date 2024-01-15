<template>
  <Swiper :items="items" :height="36 * store.rate + 'rem'"></Swiper>
  <Card
    :image="bg"
    title="传播技术的种子"
    subTitle="让技术没有门槛,让沟通没有障碍"
    image-type="rounded"
    :border="true"
  ></Card>
  <Card :icon="'i-mdi-home'"></Card>
</template>

<script setup lang="ts">
import { registerSW } from 'virtual:pwa-register';
import type { SwiperItemType } from '../components/types';
import bg from '@/assets/images/bg.png';
import { useThemeStore } from '../store/useThemeStore';
const store = useThemeStore();

const items: SwiperItemType[] = [
  {
    image: bg,
    title: '传播技术的种子',
    subTitle: '让技术没有门槛,让沟通没有障碍'
  },
  {
    image: bg,
    title: '传播技术的种子',
    subTitle: '让技术没有门槛,让沟通没有障碍'
  },
  {
    image: bg,
    title: '传播技术的种子',
    subTitle: '让技术没有门槛,让沟通没有障碍'
  },
  {
    image: bg,
    title: '传播技术的种子',
    subTitle: '让技术没有门槛,让沟通没有障碍'
  },
  {
    image: bg,
    title: '传播技术的种子',
    subTitle: '让技术没有门槛,让沟通没有障碍'
  },
  {
    image: bg,
    title: '传播技术的种子',
    subTitle: '让技术没有门槛,让沟通没有障碍'
  },
  {
    image: bg,
    title: '传播技术的种子',
    subTitle: '让技术没有门槛,让沟通没有障碍'
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
