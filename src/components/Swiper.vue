<template>
  <div>
    <swiper
      :class="getClassAndStyle(props.height).class"
      :style="getClassAndStyle(props.height).style"
      :slides-per-view="1"
      :space-between="0"
      @swiper="onSwiper"
      @slideChange="onSlideChange"
      :modules="modules"
      :navigation="{ prevEl: '.prev', nextEl: '.next' }"
      :pagination="{ type: 'fraction', el: '.pagination' }"
    >
      <swiper-slide v-for="item in items" :key="item.image">
        <slot :item="item">
          <!-- <img :src="item.image" :alt="item.title" /> -->
          <div
            class="w-full h-full bg-cover bg-no-repeat bg-center-top"
            :style="{ backgroundImage: `url(${item.image})` }"
          >
            <Container class="h-full">
              <div class="flex flex-col justify-center items-start">
                <p class="text-4xl font-bold text-white">{{ item.title }}</p>
                <p class="text-xl text-gray-100 pt-4">{{ item.subTitle }}</p>
              </div>
            </Container>
          </div>
        </slot>
      </swiper-slide>
      <div
        class="flex items-center justify-center absolute right-0 bottom-0 bg-white opacity-60 text-dark-300 w-32 h-16 z-9"
      >
        <div class="pagination w-unset font-bold mr-4"></div>
        <div
          class="prev i-mdi-arrow-left-thin"
          style="font-size: 1.5rem; display: block"
        ></div>
        <div
          class="next i-mdi-arrow-right-thin"
          style="font-size: 1.5rem; display: block"
        ></div>
      </div>
    </swiper>
  </div>
</template>

<script setup lang="ts">
import { Swiper, SwiperSlide } from 'swiper/vue';
import type { Swiper as SwiperType } from 'swiper';
import type { PropType } from 'vue';
import type { SwiperItemType } from './types';
import { Navigation, Pagination } from 'swiper/modules';
import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';

const props = defineProps({
  height: {
    type: String,
    default: 'h-80'
  },
  items: {
    type: Array as PropType<Array<SwiperItemType>>,
    default: () => []
  }
});

function getClassAndStyle(str: string) {
  // props.height
  // 如果height的值包含rem,em,px,则返回{string:str,class:""}
  // 如果height的值包含h-,则返回{string:"",class:str}
  return {
    style: /(rem|em|px)/.test(props.height) ? { height: str } : {},
    class: /h-/.test(props.height) ? str : ''
  };
}

const modules = [Navigation, Pagination];

const onSwiper = (swiper: SwiperType) => {
  console.log(swiper);
};
const onSlideChange = () => {
  console.log('slide change');
};
</script>

<style scoped>
.swiper-button-disabled {
  @apply text-gray-300;
}
.swiper-pagination-fraction {
  @apply w-unset;
}
</style>
