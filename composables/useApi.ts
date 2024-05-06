const useApi = () => {
  return {
    login(data: any) {
      return useRequestPost('/api/login', data)
    },
    upload(data: any) {
      return useRequestPost('/api/auth/images/upload', data)
    }
  }
}

export default useApi