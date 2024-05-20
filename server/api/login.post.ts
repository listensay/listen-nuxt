import Joi from 'joi'

export default defineEventHandler(async (event) => {
  const body = await readBody(event)

  try {
    // 验证数据
    await useValidate(body, {
      username: Joi.string().required(),
      password: Joi.string().required()
    })

    const token = await login(body.username, body.password)

    return successReqBase(token, '登陆成功')
  } catch (error: any) {
    return errorReq(400, event, error.message)
  }
})
