import Joi from 'joi'

export default defineEventHandler(async (event) => {
  const body = await readBody(event)

  try {
    // 校验数据
    await useValidate(body, {
      id: Joi.number().required()
    })

    // 点赞
    await articleLike(body.id)

    return successReqMessage('点赞成功')
  } catch (error: any) {
    return errorReq(500, event, error.message)
  }
})
