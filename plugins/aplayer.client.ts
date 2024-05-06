import Aplyer from 'aplayer'

export default defineNuxtPlugin((nuxtApp) => {
  return {
    provide: {
      aplayer: Aplyer
    }
  }
})
