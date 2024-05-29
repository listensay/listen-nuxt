// export default defineEventHandler(async (event) => {
//   try {
//     // 判断是否登陆
//     const auth = useAuth(event)
//     if (auth.code !== 200) {
//       return errorReq(auth.code, event, auth.message)
//     }

//     // 发布动态
//     // await postArticle(body)

//     return successReqMessage('发布成功')
//   } catch (error: any) {
//     return errorReq(500, event, error.message)
//   }
// })
