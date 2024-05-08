import useAppStore from '~/store'

export const useRequest = async (url: any, options?: any) => {
  try {
    const reqUrl = url // 你的接口地址
    const toase = useToast()

    // 可以设置默认headers例如
    const customHeaders = {
      Authorization: useCookie('token').value
    }

    const { data } = await useFetch(reqUrl, {
      ...options,
      headers: customHeaders,
      watch: false,
      onResponseError({ response }) {
        switch (response.status) {
          case 400:
            toase.error(response._data.message, {
              position: 'top'
            })
            break
          case 401:
            toase.error('没有访问权限', {
              position: 'top'
            })

            useCookie('token').value = ''
            useAppStore().isLogin = false
            break
          case 403:
            toase.error('服务器拒绝访问', {
              position: 'top'
            })
            break
          case 404:
            toase.error('请求地址错误', {
              position: 'top'
            })
            break
          case 500:
            toase.error('服务器故障', {
              position: 'top'
            })
            break
          default:
            toase.error('网络连接故障', {
              position: 'top'
            })
            break
        }
      }
    })

    const result = data.value as any

    return result
  } catch (err) {
    return Promise.reject(err)
  }
}
