import joi from 'joi'

export default defineEventHandler(async (event) => {
  const body = await readBody(event)

  try {
    // 校验数据格式
    await useValidate(body, {
      nickname: joi.string().min(1).max(18).required(),
      email: joi.string().email().required(),
      username: joi.string().min(3).max(18).required(),
      password: joi.string().min(6).max(18).required()
    })

    // 注册用户
    await register(body)
    return successReq('注册成功')
  } catch (error: any) {
    return errorReq(400, event, error.message)
  }
})
