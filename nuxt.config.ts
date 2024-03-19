// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  modules: ["@nuxt/ui", "@vant/nuxt"],
  css: [
    '~/assets/css/index.css'
  ]
})