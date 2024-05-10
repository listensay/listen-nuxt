const useAppStore = defineStore('app', {
  state: () => {
    return {
      isLogin: false,
      articleList: [],
      articleCount: 0,
      articleCurrentSelectd: null
    }
  },
  actions: {
    async fetchGetArticles(page: number = 1, size: number = 8) {
      try {
        const result = await useArticleFetch().getArticles(page, size)

        if (result.code === 200) {
          this.articleList = result.data.list
          this.articleCount = result.data.count
        }
      } catch (error) {}
    }
  }
})

export default useAppStore
