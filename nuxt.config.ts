import nitroPort from 'nitro-port-module'
import nitroPublic from 'nitro-public-module'

export default defineNuxtConfig({
  devtools: { enabled: false },
  runtimeConfig: {
    SECRET_KEY: process.env.SECRET_KEY
  },
  modules: ['@vant/nuxt', '@nuxtjs/tailwindcss', '@ant-design-vue/nuxt', 'maz-ui/nuxt', '@pinia/nuxt', 'dayjs-nuxt'],
  mazUi: {
    injectComponents: true,
    injectCss: true,
    injectAos: {
      injectCss: true
    },
    injectUseToast: true,
    injectUseThemeHandler: true,
    devtools: true
  },
  nitro: {
    devProxy: {
      '/music': {
        target: 'https://music.163.com/',
        changeOrigin: true
      }
    },
    modules: [
      nitroPort({
        port: 4000
      }),
      nitroPublic()
    ]
  },
  css: ['~/assets/css/index.css']
})
