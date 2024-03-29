import { ElMessage } from 'element-plus'

export const useRequest = async (url: any, options?: any) => {
  try {
    const reqUrl = url // 你的接口地址
    const router = useRouter()
    const route = useRoute()

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
            ElMessage.error(response._data.message)
            break
          case 401:
            ElMessage.error('没有访问权限')
            useCookie('token').value = ''
            router.push(`/login?from=${route.path}`)
            break
          case 403:
            ElMessage.error('服务器拒绝访问')
            break
          case 404:
            ElMessage.error('请求地址错误')
            break
          case 500:
            ElMessage.error('服务器故障')
            break
          default:
            ElMessage.error('网络连接故障')
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
