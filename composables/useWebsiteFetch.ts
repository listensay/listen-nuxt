const useWebsiteFetch = () => {
  return {
    likeWebsite() {
      return useRequestPost('/api/like')
    },
    website() {
      return useRequestGet('/api/website')
    }
  }
}

export default useWebsiteFetch
