import Joi from 'joi'

export default defineEventHandler(async (event) => {
  const body = await readBody(event)

  let auth

  // 判断是否登陆
  try {
    auth = useAuth(event)
  } catch (error: any) {
    return errorReq(auth.code, event, auth.message)
  }

  try {
    // 校验数据
    await useValidate(body, {
      content: Joi.string().required(),
      photos: Joi.string().allow('', null).min(1),
      location: Joi.string().allow('', null).min(1)
    })

    body.authorId = auth.user.data.id

    // 发布动态
    await postArticle(body)

    return successReq(null, '发布成功')
  } catch (error: any) {
    return errorReq(500, event, error.message)
  }
})
