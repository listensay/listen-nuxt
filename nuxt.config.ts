// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  runtimeConfig: {
    SECRET_KEY: process.env.SECRET_KEY
  },
  modules: ["@nuxt/ui", "@vant/nuxt"],
  css: [
    '~/assets/css/index.css'
  ]
})