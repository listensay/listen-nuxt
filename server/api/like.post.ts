export default defineEventHandler(async (event) => {
  try {
    await likeWebsite()
    return successReqMessage('点赞成功')
  } catch (error: any) {
    return errorReq(500, event, error.message)
  }
})
