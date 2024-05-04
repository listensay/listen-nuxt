const useApi = () => {
  return {
    login(data: any) {
      return useRequestPost('/api/login', data)
    }
  }
}

export default useApi