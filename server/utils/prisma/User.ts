import bcrypt from 'bcryptjs'
import Jwt from 'jsonwebtoken'

/**
 * 查询用户名或邮箱是否存在
 * @param username
 * @param email
 * @returns
 * @author: Milk
 */
export const checkUser = async (username: string, email: string) => {
    // 先查询用户名是否存在
    const chaeckUsername = await usePrisma.user.findFirst({
      where: {
        username,
      }
    })

    // 判断用户名是否存在
    if(chaeckUsername) {
      throw Error('用户名已存在')
    }

    // 查询邮箱是否存在
    const checkEmail = await usePrisma.user.findFirst({
      where: {
        email,
      }
    })

    if(checkEmail) {
      throw Error('邮箱已存在')
    }
}

/**
 * 注册用户
 * @param body
 * @returns
 * @author Milk
 */
export const register = async (body: any) => {
  const { username, password, email, nickname } = body

  // 查询是否存在相同用户名或邮箱
  await checkUser(username, email)

  // 加密密码
  const newPassword = bcrypt.hashSync(password, 10)

  try {
    await usePrisma.user.create({
      data: {
        username,
        password: newPassword,
        email,
        nickname,
        avatar: 'https://avatars.githubusercontent.com/u/11685308?v=4',
        createdAt: new Date(),
        updatedAt: new Date(),
      }
    })
  } catch (error) {
    throw Error('注册失败')
  }
}

/**
 * 用户登录
 * @param username
 * @param password
 * @returns token
 * @author Milk
 */
export const login = async (username: string, password: string) => {

  // 查询用户是否存在
  const user = await usePrisma.user.findFirst({
    where: {
      username
    }
  })

  if(!user) {
    throw Error('用户不存在')
  }

  const isPasswordValid = bcrypt.compareSync(password, user.password)
  if(!isPasswordValid) {
    throw Error('密码错误')
  }

  const token = Jwt.sign(
    {
      data: {
        id: user.id,
        username: user.username
      },
      exp: Math.floor(Date.now() / 1000) + (60 * 60)
    }, useRuntimeConfig().SECRET_KEY)

  return token

}
/**
 * 判断是否是管理员
 */
export const checkAdmin = async (id: number) => {
  const user = await usePrisma.user.findFirst({
    where: {
      id
    }
  })

  if (!user) {
    throw Error('用户不存在')
  }

  return user.role === 'ADMIN' ? true : false
}