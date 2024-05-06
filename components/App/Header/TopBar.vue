<script setup>
import useAppStore from '~/store'

const isLogin = ref(false)

if(process.client) {
  const AppStore = useAppStore()
  AppStore.isLogin = useCookie('token').value ? true : false
  isLogin.value = AppStore.isLogin
}

const { useToast } = useAppStore()

const isOpenLogin = ref(false)
const openLoginHandle = () => {
  isOpenLogin.value = true
}

const aplayerRef = ref(null)

const isPlay = ref(false)

const play = () => {
  aplayerRef.value.play()
  isPlay.value = true
  useToast().success('播放音乐')
}

const pause = () => {
  aplayerRef.value.pause()
  isPlay.value = false
  useToast().success('暂停音乐')
}

const playHandle = () => {
  isPlay.value = true
}

const pauseHandle = () => {
  isPlay.value = false
}

const openWrite = ref(false)

const openWriteHandle = () => {
  openWrite.value = true
}
</script>

<template>
    <div>
        <div class="header-bar absolute z-10 px-8 py-4 flex justify-between w-full">
            <div>
                <a href="javascript:;" @click="play" v-if="!isPlay">
                  <MazIcon name="play-circle" size="1.6rem"/>
                </a>
                <a href="javascript:;" @click="pause" v-else="isPlay">
                  <MazIcon name="pause-circle" size="1.6rem"/>
                </a>
            </div>
            <div class="flex items-center">

                <template v-if="!isLogin">
                  <div>
                    <a href="javascript:;" @click="openLoginHandle" class="mr-2">
                      <MazIcon name="user-circle" size="1.45rem" />
                    </a>
                  </div>
                </template>

                <a href="javascript:;" @click="openWriteHandle" class="mr-2">
                  <MazIcon name="camera" size="1.45rem"/>
                </a>
            </div>
          </div>

          <AppHeaderLogin v-model="isOpenLogin"/>

          <AppHeaderWrite v-model="openWrite"/>
  
          <Aplayer id="3077886846" ref="aplayerRef" @pause="pauseHandle" @play="playHandle" />
    </div>
</template>