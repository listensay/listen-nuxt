const useAppStore = defineStore('app', {
    state: () => {
        return {
            isLogin: false,
        }
    }
})

export default useAppStore