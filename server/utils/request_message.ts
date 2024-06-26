// 响应信息处理
export const successReqBase = (data: any = null, message: string = 'OK', code: number = 200) => {
  return {
    code,
    data,
    message,
    success: true
  }
}

export const successReqMessage = (message: string = 'OK', code: number = 200) => {
  return {
    code,
    message,
    success: true
  }
}

// 失败信息处理
export const errorReq = (code: number = 500, event: any, message: string = 'error') => {
  setResponseStatus(event, code)
  return {
    code,
    message,
    success: false
  }
}
