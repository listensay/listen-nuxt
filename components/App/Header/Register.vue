<script setup>
const openDialog = defineModel()

const emit = defineEmits(['login'])

function close() {
  openDialog.value = false
}

const form = reactive({
  username: '',
  password: '',
  nickname: '',
  email: ''
})

const formRef = ref()
const rules = reactive({
  username: [{ required: true, message: '请输入用户名', trigger: 'blur' }],
  password: [{ required: true, message: '请输入密码', trigger: 'blur' }],
  nickname: [{ required: true, message: '请输入昵称', trigger: 'blur' }],
  email: [{ required: true, message: '请输入邮箱', trigger: 'blur' }]
})
const onSubmit = () => {
  formRef.value
    .validate()
    .then(() => {
      // 网络请求
      useApi()
        .register(form)
        .then(() => {
          useToast().success('注册成功')
          form.username = ''
          form.password = ''
          form.nickname = ''
          form.email = ''
          emit('login')
          openDialog.value = false
        })
    })
    .catch((error) => {
      console.log('error', error)
    })
}
</script>

<template>
  <div>
    <MazDialog v-model="openDialog" title="注册" @close="close">
      <a-form ref="formRef" :model="form" :rules="rules" :label-col="{ style: { width: '70px' } }">
        <a-form-item label="用户名" name="username">
          <a-input v-model:value="form.username" />
        </a-form-item>

        <a-form-item label="昵称" name="nickname">
          <a-input v-model:value="form.nickname" />
        </a-form-item>

        <a-form-item label="邮箱" name="email">
          <a-input v-model:value="form.email" />
        </a-form-item>

        <a-form-item label="密码" name="password">
          <a-input-password v-model:value="form.password" />
        </a-form-item>

        <div class="w-full flex justify-end mt-2">
          <MazBtn color="secondary" @click="onSubmit">注册账号</MazBtn>
        </div>
      </a-form>
    </MazDialog>
  </div>
</template>
