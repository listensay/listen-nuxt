const useArticleFetch = () => {
  return {
    getArticles(page: number, size: number) {
      return useRequestGet('/api/auth/article', { page, size })
    },
    postArticle(data: any) {
      return useRequestPost('/api/auth/article', data)
    }
  }
}

export default useArticleFetch
