// uno.config.ts
import { defineConfig } from 'unocss';
// import presetWind from '@unocss/preset-wind'
import {
  presetWind,
  presetIcons,
  transformerDirectives,
  transformerVariantGroup
} from 'unocss';

export default defineConfig({
  shortcuts: {
    // 全局经常要使用到的样式配置
    // 'router-link': 'text-white text-2xl px-4 py-2 cursor-pointer font-300 hover:font-500',
    'bg-image': 'w-full h-full bg-cover bg-no-repeat bg-center-top'
  },
  presets: [
    presetWind(),
    presetIcons({
      prefix: 'i-',
      extraProperties: {
        display: 'inline-block'
      }
    })
  ],
  transformers: [transformerDirectives(), transformerVariantGroup()] // 配置unocss指令集,如@apply等
});
