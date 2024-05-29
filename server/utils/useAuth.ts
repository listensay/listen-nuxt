// 判断是否登陆
export const useAuth = (event: any) => {
  if (!event.context.auth) {
    return { code: 401, message: '非法请求' }
  }

  if (event.context.auth.error) {
    return { code: 401, message: '登陆过期' }
  }

  event.context.auth.code = 200
  return event.context.auth
}

export const useAdmin = (event: any) => {
  if (!event.context.auth) {
    return { code: 401, message: '未登陆' }
  }

  if (!event.context.auth.isAdmin) {
    return { code: 401, message: '登陆过期' }
  }

  event.context.auth.code = 200
  return event.context.auth
}
