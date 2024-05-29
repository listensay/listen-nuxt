<script setup>
import useAppStore from './store'

const website = await useWebsiteFetch().website()
useAppStore().website = website.data

useSeoMeta({
  title: website.data.title,
  description: website.data.description
})
</script>

<template>
  <div>
    <NuxtLayout>
      <NuxtPage />
    </NuxtLayout>
  </div>
</template>
