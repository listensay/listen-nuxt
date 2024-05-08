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

const formRef = ref()
const rules = reactive({
  username: [{ required: true, message: '请输入用户名', trigger: 'blur' }],
  password: [{ required: true, message: '请输入密码', trigger: 'blur' }]
})

const onSubmit = () => {
  formRef.value
    .validate()
    .then(() => {
      // 网络请求
      useApi()
        .login(form)
        .then((res) => {
          cookie.value = res.data
          useToast().success('登录成功')
          form.username = ''
          form.password = ''
          useAppStore().isLogin = true
          openDialog.value = false
        })

      console.log('first')
    })
    .catch((error) => {
      console.log('error', error)
    })
}

const register = () => {
  emit('register')
}
</script>

<template>
  <div>
    <MazDialog v-model="openDialog" title="登陆" @close="close">
      <a-form ref="formRef" :model="form" :rules="rules" :label-col="{ style: { width: '70px' } }">
        <a-form-item label="用户名">
          <a-input v-model:value="form.username" />
        </a-form-item>

        <a-form-item label="密码">
          <a-input-password v-model:value="form.password" />
        </a-form-item>

        <div class="w-full flex justify-end mt-2">
          <MazBtn type="button" color="secondary" class="mr-2" outline @click="register">没有账号？</MazBtn>
          <MazBtn type="button" @click="onSubmit">登陆</MazBtn>
        </div>
      </a-form>
    </MazDialog>
  </div>
</template>
