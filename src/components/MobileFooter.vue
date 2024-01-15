<template>
  <div class="fixed bottom-0 w-full">
    <ul
      class="w-full flex flex-row justify-around border-t-gray border-1 border-solid p-2"
    >
      <li
        v-for="(item, index) in footerList"
        :key="index"
        class="flex flex-col items-center"
      >
        <div :class="[item.icon,'text- text-8 pb-[0.5rem]']"></div>
        <p class="text-4">{{ item.desc }}</p>
      </li>
    </ul>
  </div>
</template>

<script setup lang="ts">
const footerList = [
  {
    icon: 'i-lucide:home',
    desc: '首页'
  },
  {
    icon: 'i-uiw:message',
    desc: '社区'
  },
  {
    icon: 'i-ic-outline-book',
    desc: '学习'
  },
  {
    icon: 'i-akar-icons:person',
    desc: '我的'
  }
];
</script>

<style scoped></style>
