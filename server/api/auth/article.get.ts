import Joi from 'joi'

export default defineEventHandler(async (event) => {
  const body = await getQuery(event)

  try {
    // 数据校验
    await useValidate(body, {
      page: Joi.string().required(),
      size: Joi.string().required()
    })

    const page = Number(body.page)
    const size = Number(body.size)

    // 获取数据
    const data = await getArticles(page, size)

    return successReq(data)
  } catch (error: any) {
    return errorReq(500, event, error.message)
  }
})
