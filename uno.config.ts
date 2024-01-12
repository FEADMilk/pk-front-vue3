// uno.config.ts
import { defineConfig } from 'unocss';
// import presetWind from '@unocss/preset-wind'
import { presetWind, presetIcons, transformerDirectives } from 'unocss';

export default defineConfig({
  shortcuts: {
    // 全局经常要使用到的样式配置
    // 'router-link': 'text-white text-2xl px-4 py-2 cursor-pointer font-300 hover:font-500',
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
  transformers: [transformerDirectives()] // 配置unocss指令集,如@apply等
});
