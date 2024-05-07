<script setup>
import useAppStore from '~/store'

const openDialog = defineModel()
const emit = defineEmits(['register'])
const cookie = useCookie('token')

function close() {
  openDialog.value = false
}

const form = reactive({
  username: '',
  password: ''
})

const onFinish = (values) => {
  useApi()
    .login(values)
    .then((res) => {
      cookie.value = res.data
      useToast().success('登录成功')
      form.username = ''
      form.password = ''
      useAppStore().isLogin = true
      openDialog.value = false
    })
}

const register = () => {
  emit('register')
}
</script>

<template>
  <div>
    <MazDialog v-model="openDialog" title="登陆" @close="close">
      <a-form
        :model="form"
        name="basic"
        autocomplete="off"
        :label-col="{ style: { width: '70px' } }"
        @finish="onFinish"
      >
        <a-form-item
          label="用户名"
          name="username"
          :rules="[{ required: true, message: 'Please input your username!' }]"
        >
          <a-input v-model:value="form.username" />
        </a-form-item>

        <a-form-item
          label="密码"
          name="password"
          :rules="[{ required: true, message: 'Please input your password!' }]"
        >
          <a-input-password v-model:value="form.password" />
        </a-form-item>

        <div class="w-full flex justify-end mt-2">
          <a-button type="text" class="mr-2" @click="register"
            >没有账号？</a-button
          >
          <a-button type="primary" html-type="submit">登陆</a-button>
        </div>
      </a-form>
    </MazDialog>
  </div>
</template>
