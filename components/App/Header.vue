<script setup>
const isOpen = ref(false)
const cookie = useCookie('token')

function close() {
  isOpen.value = false
}

function open() {
  isOpen.value = true
}

const form = reactive({
  username: '',
  password: ''
})

const onFinish = () => {
  useApi().login(form).then(res => {
    cookie.value = res.data
    useToast().success('登录成功')
    isOpen.value = false
  })
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
</script>

<template>
  <div class="header bg-white relative text-white">
    <div class="header-bar absolute z-10 px-8 py-4 flex justify-between w-full">
      <div>
          <a href="javascript:;" @click="play" v-if="!isPlay">
            <MazIcon name="play-circle" size="1.6rem"/>
          </a>
          <a href="javascript:;" @click="pause" v-else="isPlay">
            <MazIcon name="pause-circle" size="1.6rem"/>
          </a>
      </div>
      <div>
        <a href="javascript:;" @click="open">
          <!-- <MazIcon icon="login"></MazIcon> -->
        </a>
        <a-dropdown>
          <a class="ant-dropdown-link" @click.prevent>
            <MazIcon name="list-bullet" size="1.6rem" />
          </a>
          <template #overlay>
            <a-menu>
              <a-menu-item key="1">1st menu item</a-menu-item>
              <a-menu-item key="2">2nd menu item</a-menu-item>
              <a-menu-item key="3">3rd menu item</a-menu-item>
            </a-menu>
          </template>
        </a-dropdown>
      </div>
    </div>
    <div class="header-profile relative brightness-50">
      <img src="/images/banner.jpeg" class="w-full h-64 max-md:h-52 object-cover bg-cover" alt="bg">
    </div>
    <div class="profle">

      <div class="flex justify-end items-center">
        <div class="mr-4 flex flex-col items-end">
          <div class="text-white text-xl z-10">Milk</div>
        </div>
        <div>
          <img src="~/assets/images/avatar.png" class="w-20 h-20 relative rounded-md shadow" alt="avatar">
        </div>
      </div>

      <div class="desc mb-2 py-4 px-0 flex justify-end text-sm text-zinc-600">不要倒在黎明前的黑夜里</div>
    </div>

    <MazDialog v-model="isOpen" title="登陆">

      <a-form
        :model="form"
        name="basic"
        autocomplete="off"
        @finish="onFinish"
      >
        <a-form-item
          label="Username"
          name="username"
          :rules="[{ required: true, message: 'Please input your username!' }]"
        >
          <a-input v-model:value="form.username" />
        </a-form-item>
    
        <a-form-item
          label="Password"
          name="password"
          :rules="[{ required: true, message: 'Please input your password!' }]"
        >
          <a-input-password v-model:value="form.password" />
        </a-form-item>

        <div class="w-full flex justify-end mt-2">
          <MazBtn type="submit">登陆</MazBtn>
        </div>

      </a-form>
    </MazDialog>

    <Aplayer id="3077886846" ref="aplayerRef" @pause="pauseHandle" @play="playHandle" />
  </div>
</template>

<style lang="less" scoped>
.header {
  .profle {
    @apply  -mt-16 mr-8;
  }
}

</style>
