<script setup>
import useAppStore from '~/store'

const appStore = useAppStore()
await appStore.fetchGetArticles()

const { articleList } = storeToRefs(appStore)
</script>

<template>
  <div class="home">
    <ul>
      <li>
        <ArticleItem v-for="article in articleList" :key="article.id" :item="article" />
      </li>
    </ul>
  </div>
</template>

<style lang="less" scoped></style>
