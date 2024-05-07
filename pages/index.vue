<script setup></script>

<template>
  <div class="home">
    <ul>
      <li>
        <ArticleItem v-for="item in 8" :key="item" />
      </li>
    </ul>
  </div>
</template>

<style lang="less" scoped></style>
