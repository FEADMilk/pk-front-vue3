<template>
  <div
    class="fixed top-0 z-10 w-full text-white transition-all duration-500"
    :class="[
      { 'bg-black bg-opacity-30': y > 0 },
      { 'lt-sm:(bg-black h-full)': show }
    ]"
  >
    <Container>
      <img src="/512x512.png" alt="" class="w-22 h-full lt-sm:mx-auto" />
      <div
        class="display-none i-ic-round-menu text-gray-300 text-xl absolute right-5 top-3 cursor-pointer hover:text-white lt-sm:display-block"
        @click="() => toggle(!show)"
      ></div>
      <Menu
        v-show="show"
        class="lt-sm:(absolute top-14 right-0 w-full flex-col)"
        align="vertical"
      ></Menu>
    </Container>
  </div>
  <router-view></router-view>
  <div class="h-[900px]"></div>
  <footer class="w-full">
    <div class="mobile-hide">default footer</div>
    <MobileFooter class="display-none mobile"></MobileFooter>
  </footer>
</template>

<script setup lang="ts">
const { y } = useWindowScroll();
const [show, toggle] = useToggle(false);
const flag = ref(false);
useResizeObserver(document.body, () => {
  const width = window.innerWidth;
  if (width >= 640) {
    toggle(true);
    flag.value = false;
  } else {
    if (flag.value) return;
    flag.value = true;
    toggle(false);
  }
});
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
