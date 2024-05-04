// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  runtimeConfig: {
    SECRET_KEY: process.env.SECRET_KEY
  },
  modules: [
    "@vant/nuxt",
    "@nuxtjs/tailwindcss",
    "@ant-design-vue/nuxt",
    "maz-ui/nuxt"
  ],
  mazUi: {
    injectComponents: true,
    injectCss: true,
    injectAos: {
      injectCss: true,
    },
    injectUseToast: true,
    injectUseThemeHandler: true,
    devtools: true,
  },
  css: [
    '~/assets/css/index.css'
  ]
})