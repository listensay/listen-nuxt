// @ts-ignore
import jwt from "jsonwebtoken";

/***
 * 1、获取token
 * 2、判断token，如果有token，则处理token，之后再验证token值
 */
export default defineEventHandler(async (event)=>{
  //获取token值
  let token = getHeader(event,"Authorization")

  if (token) {
    //处理token字符串
    token = token.replace("Bearer ","")
    //获取秘钥
    let secret = useRuntimeConfig().SECRET_KEY

    // 验证token
    const decoded = <any> jwt.verify(token, secret);
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
  }
})