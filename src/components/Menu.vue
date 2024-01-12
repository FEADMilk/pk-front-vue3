<template>
  <div class="flex">
    <router-link to="/" class="item">产品</router-link>
    <router-link to="/study" class="item">学习</router-link>
    <!-- <router-link to="/community">社区</router-link> -->
    <a href="https://www.baidu.com" target="_blank" class="item">社区</a>
    <router-link to="/about" class="item">关于</router-link>
  </div>
</template>

<script setup lang="ts"></script>

<style scoped>
.item {
  @apply relative text-xl px-8 py-2 font-300;
  &:hover {
    @apply font-500;
    &::after {
      /* 注意伪类元素after的content不能设置为none,当设置为empty */
      @apply content-empty bg-blue w-8 h-1 absolute bottom-0 left-1/2 transform -translate-x-1/2;
    }
  }
}
</style>
