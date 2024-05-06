<script setup>
import useAppStore from '~/store'

const isLogin = ref(false)

if(process.client) {
  const AppStore = useAppStore()
  AppStore.isLogin = useCookie('token').value ? true : false
  isLogin.value = AppStore.isLogin
}

const { useToast } = useAppStore()

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

const openWrite = ref(false)

const openWriteHandle = () => {
  openWrite.value = true
}

// 文章表单
const article = reactive({
  content: '',
  photos: []
})

// 上传文件
const afterRead = (file) => {

  const forms = new FormData();
  forms.append("file", file.file); // 获取上传图片信息

  useApi().upload(forms).then(res => {
    article.photos.push(res.data[0].url)
  }).catch(err => {
    console.log(err)
  })
};

// 文件预览
const fileList = ref([])

// 发布文章
const pushArticle = () => {
  console.log(article)
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
                    <a href="javascript:;" @click="open" class="mr-2">
                      <MazIcon name="user-circle" size="1.45rem" />
                    </a>
                  </div>
                </template>

                <a href="javascript:;" @click="openWriteHandle" class="mr-2">
                  <MazIcon name="camera" size="1.45rem"/>
                </a>
            </div>
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

          <MazDialog v-model="openWrite" :noClose="true">
            <div class="mb-4">
              <a-textarea
                v-model:value="article.content"
                placeholder="这一刻的想法"
                :auto-size="{ minRows: 8, maxRows: 5 }"
                :bordered="false"
              />
            </div>
            <div class="mb-4">
              <van-uploader v-model="fileList" :after-read="afterRead" :max-count="2"/>
            </div>

            <div class="mb-4 flex justify-center">
              <div class="mx-2">
                <MazBtn color="black" pastel @click="openWrite = false">取消</MazBtn>
              </div>
              <div class="mx-2">
                <MazBtn color="secondary" @click="pushArticle">发布</MazBtn>
              </div>
            </div>
          </MazDialog>
  
          <Aplayer id="3077886846" ref="aplayerRef" @pause="pauseHandle" @play="playHandle" />
    </div>
</template>