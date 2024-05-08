// 判断是否登陆
export const useAuth = (event: any) => {
  if (!event.context.auth) {
    throw new Error('非法请求')
  }

  if (event.context.auth.error) {
    throw new Error('登陆过期')
  }

  return event.context.auth
}

export const useAdmin = (event: any) => {
  if (!event.context.auth) {
    throw new Error('未登陆')
  }

  if (!event.context.auth.isAdmin) {
    throw new Error('权限无效')
  }

  return event.context.auth
}
