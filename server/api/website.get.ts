export default defineEventHandler(async (event) => {
  try {
    const website = await getWebsiteInfo()
    return successReqBase(website)
  } catch (error: any) {
    return errorReq(500, event, error.message)
  }
})
