<script setup>
import useAppStore from '~/store'

const AppStore = useAppStore()
const { isLogin } = storeToRefs(AppStore)
const toast = useToast()

if (process.client) {
  isLogin.value = !!useCookie('token').value
  isLogin.value = AppStore.isLogin
}

// 登陆弹窗
const isOpenLogin = ref(false)

const openLoginHandle = () => {
  isOpenLogin.value = true
}

// 注册弹唱
const isOpenRegister = ref(false)

const aplayerRef = ref(null)

const isPlay = ref(false)

const play = () => {
  aplayerRef.value.play()
  isPlay.value = true
  toast.success('播放音乐')
}

const pause = () => {
  aplayerRef.value.pause()
  isPlay.value = false
  toast.success('暂停音乐')
}

const playHandle = () => {
  isPlay.value = true
}

const pauseHandle = () => {
  isPlay.value = false
}

const openWrite = ref(false)

const openWriteHandle = () => {
  if (isLogin.value) {
    return (openWrite.value = true)
  }

  // 未登陆
  openLoginHandle()
  toast.info('登陆后才能发内容 QAQ')
}

const register = () => {
  isOpenLogin.value = false
  isOpenRegister.value = true
}
</script>

<template>
  <div>
    <div class="header-bar absolute z-10 px-8 py-4 flex justify-between w-full">
      <!-- 播放器 -->
      <div>
        <template v-if="!isPlay">
          <a href="javascript:;" @click="play">
            <MazIcon name="play-circle" size="1.6rem" />
          </a>
        </template>
        <template v-else>
          <a href="javascript:;" @click="pause">
            <MazIcon name="pause-circle" size="1.6rem" />
          </a>
        </template>
      </div>
      <div class="flex items-center">
        <!-- 登陆按钮 -->
        <template v-if="!isLogin">
          <a href="javascript:;" class="mr-2" @click="openLoginHandle">
            <MazIcon name="user-circle" size="1.45rem" />
          </a>
        </template>

        <a href="javascript:;" @click="openWriteHandle">
          <MazIcon name="camera" size="1.45rem" />
        </a>
      </div>
    </div>

    <!-- 登陆对话框 -->
    <AppHeaderLogin v-model="isOpenLogin" @register="register" />
    <!-- 注册对话框 -->
    <AppHeaderRegister v-model="isOpenRegister" @login="openLoginHandle" />
    <!-- 写文章对话框 -->
    <AppHeaderWrite v-model="openWrite" />

    <!-- <Aplayer id="3077886846" ref="aplayerRef" @pause="pauseHandle" @play="playHandle" /> -->
  </div>
</template>
