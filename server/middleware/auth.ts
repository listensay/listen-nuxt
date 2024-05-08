import jwt from 'jsonwebtoken'

export default defineEventHandler(async (event) => {
  // 获取token值
  const token = getHeader(event, 'Authorization')

  if (token) {
    // 获取秘钥
    const secret = useRuntimeConfig().SECRET_KEY

    // 验证token
    try {
      const decoded = <any>jwt.verify(token, secret)
      // 验证是否是管理员
      const isAdmin = await checkAdmin(decoded.id)

      if (isAdmin) {
        event.context.auth = {
          user: decoded,
          isAdmin: true
        }
      } else {
        event.context.auth = {
          user: decoded,
          isAdmin: false
        }
      }
    } catch (error) {
      event.context.auth = {
        error: {
          code: 401,
          message: '登陆已过期'
        }
      }
    }
  }
})
