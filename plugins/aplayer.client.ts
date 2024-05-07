import Aplyer from 'aplayer'

export default defineNuxtPlugin(() => {
  return {
    provide: {
      aplayer: Aplyer
    }
  }
})
