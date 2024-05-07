/*
 * @Author: N0ts
 * @Date: 2024-03-12 16:33:26
 * @Description: 文件上传
 * @FilePath: \bto\server\api\manage\file\index.post.ts
 * @Mail：mail@n0ts.top
 */
import fs from 'fs'
import formidable from 'formidable'

// 上传路径
const uploadDir = './public/images/'

// 创建上传目录
fs.stat(uploadDir, (err, stats) => {
  if (err) {
    fs.mkdir(uploadDir, (err) => {
      if (err) {
        console.error('创建图片目录失败', err)
      }
    })
  }
})

export default defineEventHandler(async (event) => {
  try {
    useAuth(event)
  } catch (error: any) {
    return errorReq(401, event, error.message)
  }

  // 上传配置
  const form = formidable({
    uploadDir,
    multiples: true, // 支持多文件
    maxFileSize: 5 * 1024 * 1024, // 5MB 大小限制
    keepExtensions: true, // 保留文件扩展名
    // 文件名重命名
    filename: (name: string, ext: string, part, form) => {
      return `${name}-${new Date().getTime()}${ext}`
    },
    // 文件过滤
    filter: (part) => {
      // 判断文件名是否为图片格式
      if (part.originalFilename?.match(/\.(jpg|jpeg|png)$/i)) {
        return true
      }
      return false
    }
  })

  function upload() {
    return new Promise((resolve, reject) => {
      form.parse(event.node.req, (err, fields, files: any) => {
        if (err) {
          if (err.message.includes('options.maxTotalFileSize')) {
            return reject('图片超出限制！最大限制 5MB')
          }
          return reject(err)
        }

        const result = []
        for (const key in files) {
          result.push({
            name: files[key][0].newFilename,
            url: '/img/uploads/' + files[key][0].newFilename
          })
        }
        resolve(result)
      })
    })
  }

  try {
    const data = await upload()
    return successReq(data)
  } catch (err: any) {
    return errorReq(400, event, err.message)
  }
})

// 作者：N0ts
// 链接：https://juejin.cn/post/7360961068166299689
// 来源：稀土掘金
// 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
