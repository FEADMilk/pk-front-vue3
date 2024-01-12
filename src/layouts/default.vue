<template>
  <div
    class="fixed top-0 z-10 w-full text-white"
    :class="{ 'bg-black bg-opacity-30': y > 0 }"
  >
    <Container>
      <img src="/512x512.png" alt="" class="w-22 h-full" />
      <Menu></Menu>
    </Container>
  </div> 
  <router-view></router-view>
  <div class="h-[900px]"></div>
  <footer>底部</footer>
</template>

<script setup lang="ts">
const { y } = useWindowScroll();
</script>

<style scoped>
/* 方法1:使用unocss的transformer指令定义多个样式 */
.item {
  @apply relative text-white text-2xl px-4 py-2;
  &:hover {
    @apply bg-blue-500;
    &:after {
      content: '';
      @apply absolute bg-gray-100 w-8 h-1 bottom-0;
      left: calc(50%-1rem);
    }
  }
}
/* 方法2:在unocss中设置配置项shortcuts */
</style>
