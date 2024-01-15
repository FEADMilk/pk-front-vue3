export const useThemeStore = defineStore('theme', {
  state: () => {
    return {
      rate: 0
    };
  },
  actions: {
    setTheme(rate: number) {
      this.rate = rate;
    }
  }
});
