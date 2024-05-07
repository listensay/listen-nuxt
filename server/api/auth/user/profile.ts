export default defineEventHandler(async (event) => {
  try {
    const auth = await useAuth(event)
    const user = await getUserInfo(auth.user.data.id)

    return successReq(user)
  } catch (error: any) {
    return errorReq(400, event, error.message)
  }
})
