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
        <template v-if="articleList.length > 0">
          <ArticleItem v-for="article in articleList" :key="article.id" :item="article" />
        </template>
        <template v-else>
          <div class="p-8">
            <AppEmpty />
          </div>
        </template>
      </li>
    </ul>
  </div>
</template>

<style lang="less" scoped></style>
