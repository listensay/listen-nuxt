export default defineEventHandler(event => {
  try {
    useAdmin(event)

    return successReq('ok')
  } catch (error: any) {
    return errorReq(400, event, error.message)
  }
})