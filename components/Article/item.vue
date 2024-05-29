<script setup>
import useAppStore from '~/store'

const { articleCurrentSelectd } = storeToRefs(useAppStore())

const props = defineProps({
  item: {
    type: Object,
    default: () => ({})
  }
})

// 通过 actions 属性来定义菜单选项
const actions = [
  { text: '点赞', icon: 'like-o' },
  { text: '评论', icon: 'chat-o' }
]

const toast = useToast()

const onSelect = (action) => {
  if (action.text === '点赞') {
    toast.success('(＾∀＾)ﾉｼ	', {
      position: 'top'
    })
    action.text = '取消点赞'
  } else if (action.text === '取消点赞') {
    toast.error('(*꒦ິㅿ꒦ີ)', {
      position: 'top'
    })
    action.text = '点赞'
  }
}

const open = () => {
  articleCurrentSelectd.value = props.item.id
}

const showState = computed({
  get() {
    return articleCurrentSelectd.value === props.item.id
  },
  set() {}
})

const images = computed(() => {
  return props.item.photos.split(',')
})
</script>

<template>
  <div class="article-item">
    <div class="profile">
      <div class="avatar">
        <template v-if="item.author.avatar">
          <img :src="item.author.avatar" alt="avatar" />
        </template>
        <template v-else> <img src="~/assets/images/avatar.png" alt="avatar" /> </template>
      </div>
      <div class="info">
        <div class="name">{{ item.author.nickname }}</div>
        <div class="username">{{ item.author.description }}</div>
      </div>
    </div>
    <div class="article-content">
      <div class="content text-sm my-4">
        <p>{{ item.content }}</p>
        <div v-if="item.photos" class="mt-4">
          <ClientOnly>
            <MazGallery :images="images" :height="260" />
          </ClientOnly>
        </div>
      </div>

      <div class="flex items-center justify-between mb-2">
        <time :datetime="$dayjs(item.createdAt).format('YYYY-MM-DD HH:mm:ss')" class="time text-sm text-zinc-600">{{
          $dayjs(item.createdAt).format('YYYY-MM-DD')
        }}</time>

        <van-popover v-model:show="showState" placement="left" actions-direction="horizontal" :actions="actions" @select="onSelect" @open="open">
          <template #reference>
            <div class="flex w-9 justify-evenly bg-slate-100 p-1 py-2 rounded cursor-pointer">
              <div class="w-1 h-1 bg-sky-600 rounded-full"></div>
              <div class="w-1 h-1 bg-sky-600 rounded-full"></div>
            </div>
          </template>
        </van-popover>
      </div>
    </div>
  </div>
</template>

<style lang="less" scoped>
.article-item {
  @apply p-8;
  @apply flex-1 border-b border-zinc-100;

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
