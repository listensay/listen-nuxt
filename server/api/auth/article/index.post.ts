export default defineEventHandler(async event => {
  // 判断是否登陆
  try {
    useAuth(event)
  } catch (error: any) {
    return errorReq(401, event, error.message)
  }

  try {
    // 业务代码
    
    return successReq(null, 'OK')
  } catch (error: any) {
    return errorReq(500, event, error.message)
  }
})
