// 发布文章
export const postArticle = async (data: any) => {
  try {
    const result = await usePrisma.article.create({ data })
    return result
  } catch (error: any) {
    throw new Error(error.message)
  }
}

/**
 * 获取文章列表
 * @param page, size
 */
export const getArticles = async (page: number, size: number) => {
  try {
    const list = await usePrisma.article.findMany({
      take: size,
      skip: (page - 1) * size,
      orderBy: {
        createdAt: 'desc'
      },
      // author 返回部分数据
      include: {
        author: {
          select: {
            nickname: true,
            avatar: true
          }
        }
      }
    })

    // 查询文章数量
    const count = await usePrisma.article.count()
    return { list, count }
  } catch (error: any) {
    throw new Error(error.message)
  }
}
