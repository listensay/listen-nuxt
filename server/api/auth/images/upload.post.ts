import fs from 'fs'
import formidable from 'formidable'

// 上传路径
const uploadDir = '../public/images/'

// 创建上传目录
fs.stat(uploadDir, (err) => {
  if (err) {
    fs.mkdir(uploadDir, (err) => {
      if (err) {
        return errorReq(500, event, '创建图片目录失败')
      }
    })
  }
})

export default defineEventHandler(async (event) => {
  // 判断是否登陆
  const auth = useAuth(event)
  if (auth.code !== 200) {
    return errorReq(auth.code, event, auth.message)
  }

  // 上传配置
  const form = formidable({
    uploadDir,
    multiples: true, // 支持多文件
    maxFileSize: 5 * 1024 * 1024, // 5MB 大小限制
    keepExtensions: true, // 保留文件扩展名
    // 文件名重命名
    filename: (name: string, ext: string) => {
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

  const upload = () => {
    return new Promise((resolve, reject) => {
      form.parse(event.node.req, (err, _fields, files: any) => {
        if (err) {
          if (err.message.includes('options.maxTotalFileSize')) {
            return reject(new Error('图片超出限制！最大限制 5MB'))
          }
          return reject(err)
        }

        const result = []
        for (const key in files) {
          result.push({
            name: files[key][0].newFilename,
            url: '/images/' + files[key][0].newFilename
          })
        }
        resolve(result)
      })
    })
  }

  try {
    const data = await upload()
    return successReqBase(data)
  } catch (err: any) {
    return errorReq(400, event, err.message)
  }
})
