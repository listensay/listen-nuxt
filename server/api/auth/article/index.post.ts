import Joi from 'joi'

export default defineEventHandler(async (event) => {
  const body = await readBody(event)

  try {
    // 判断是否登陆
    const auth = useAuth(event)
    if (auth.code !== 200) {
      return errorReq(auth.code, event, auth.message)
    }

    // 校验数据
    await useValidate(body, {
      content: Joi.string().required(),
      photos: Joi.string().allow('', null).min(1),
      location: Joi.string().allow('', null).min(1)
    })

    body.authorId = auth.user.data.id

    // 发布动态
    await postArticle(body)

    return successReqMessage('发布成功')
  } catch (error: any) {
    return errorReq(500, event, error.message)
  }
})
