// 网站点赞
export const likeWebsite = async () => {
  try {
    await usePrisma.website.update({
      where: {
        id: 1
      },
      data: {
        likeCount: {
          increment: 1
        }
      }
    })
  } catch (error) {
    return error
  }
}

// 获取网站信息
export const getWebsiteInfo = async () => {
  try {
    const websiteInfo = await usePrisma.website.findUnique({
      where: {
        id: 1
      }
    })
    return websiteInfo
  } catch (error) {}
}
