<script setup>
const showPopover = ref(false);
const actions = [
  {
    text: '赞',
    icon: 'like-o'
  },
  {
    text: '评论',
    icon: 'comment-o'
  },
];

function selectHandle(e, index) {
  console.log(e, index)
}
</script>

<template>
  <div class="article-item">
    <div class="avatar">
      <img src="~/assets/images/avatar.png" alt="avatar">
    </div>
    <div class="article-content">

      <div class="name">很简单</div>

      <div class="content text-sm">
        <p>1231</p>
      </div>

      <div class="flex items-center justify-between mb-2">
        <time datetime="2021-08-24" class="time text-sm">2021-08-24</time>
        <div>

          <van-popover
            v-model:show="showPopover"
            :actions="actions"
            @select="selectHandle"
            actions-direction="horizontal"
            placement="left"
            theme="dark"
          >
            <template #reference>
              <van-button size="small" class=" bg-slate-100">
                <van-icon name="weapp-nav" />
              </van-button>
            </template>
          </van-popover>

        </div>
      </div>

      <div class="article-detail">
        123123
      </div>
    </div>
  </div>
</template>

<style lang="less" scoped>
.article-item {
  display: flex;
  justify-content: space-between;
  @apply mb-2;

  .avatar {
    @apply w-14 h-14 flex-shrink-0 mr-4;
    img {
      @apply rounded-md;
    }
  }

  .article-content {
    @apply flex-1 mb-4 border-b border-zinc-200;

    .name {
      @apply mt-1 mb-1 text-indigo-800;
    }

    .content {
      @apply pb-2 text-zinc-800;
    }

    .time {
      @apply block;
    }

    .article-detail {
      @apply text-sm p-2 mb-4 bg-zinc-100 text-zinc-600;
    }
  }
}
</style>
