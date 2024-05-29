// 发布文章
export const postArticle = async (data: any) => {
  try {
    const result = await usePrisma.article.create({ data })
    return result
  } catch (error: any) {
    console.log(error)
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
            avatar: true,
            description: true
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

export const articleLike = async (articleId: number) => {
  try {
    // 查询文章ID是否存在
    const article = await usePrisma.article.findUnique({
      where: {
        id: Number(articleId)
      }
    })

    if (!article) {
      throw new Error('文章不存在')
    }

    // 文章点赞
    await usePrisma.article.update({
      where: {
        id: Number(articleId)
      },
      data: {
        likeCount: {
          increment: 1
        }
      }
    })
  } catch (error) {
    console.log(error)
  }
}
