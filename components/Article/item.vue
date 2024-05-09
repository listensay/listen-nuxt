<script setup>
defineProps({
  item: {
    type: Object,
    default: () => ({})
  }
})
</script>

<template>
  <div class="article-item">
    <div class="profile">
      <div class="avatar">
        <img :src="item.author.avatar" alt="avatar" />
      </div>
      <div class="info">
        <div class="name">{{ item.author.nickname }}</div>
        <div class="username">{{ item.author.description }}</div>
      </div>
    </div>
    <div class="article-content">
      <div class="content text-sm my-4">
        <p>{{ item.content }}</p>
      </div>

      <div class="flex items-center justify-between mb-2">
        <time :datetime="$dayjs(item.createdAt).format('YYYY-MM-DD HH:mm:ss')" class="time text-sm">{{
          $dayjs(item.createdAt).format('YYYY-MM-DD')
        }}</time>
      </div>
    </div>
  </div>
</template>

<style lang="less" scoped>
.article-item {
  @apply p-6;
  @apply flex-1 mb-4 border-b border-zinc-200;

  .profile {
    display: flex;

    .avatar {
      @apply w-11 h-14 flex-shrink-0 mr-4;

      img {
        @apply rounded-sm;
      }
    }

    .info {
      .username {
        @apply text-sm text-zinc-700;
      }
    }
  }

  .article-content {
    .name {
      @apply mt-1 mb-1 text-zinc-800;
    }

    .content {
      @apply pb-2 text-zinc-800;
    }

    .time {
      @apply block;
    }
  }
}
</style>
