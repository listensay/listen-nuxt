export default defineEventHandler(async (event) => {
  try {
    let auth

    // 判断是否登陆
    try {
      auth = useAuth(event)
    } catch (error: any) {
      return errorReq(auth.code, event, auth.message)
    }

    const user = await getUserInfo(auth.user.data.id)

    return successReq(user)
  } catch (error: any) {
    return errorReq(400, event, error.message)
  }
})
