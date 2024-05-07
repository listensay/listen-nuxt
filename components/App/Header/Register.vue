<script setup>
const openDialog = defineModel()

const emit = defineEmits(['login'])

function close() {
  openDialog.value = false
}

const form = reactive({
  username: '',
  password: ''
})

const onFinish = () => {
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
}
</script>

<template>
  <div>
    <MazDialog v-model="openDialog" title="注册" @close="close">
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
          :rules="[{ required: true, message: '请输入用户名!' }]"
        >
          <a-input v-model:value="form.username" />
        </a-form-item>

        <a-form-item
          label="昵称"
          name="nickname"
          :rules="[{ required: true, message: '请输入昵称!' }]"
        >
          <a-input v-model:value="form.nickname" />
        </a-form-item>

        <a-form-item
          label="邮箱"
          name="email"
          :rules="[{ required: true, message: '请输入邮箱！' }]"
        >
          <a-input v-model:value="form.email" />
        </a-form-item>

        <a-form-item
          label="密码"
          name="password"
          :rules="[{ required: true, message: '请输入密码！' }]"
        >
          <a-input-password v-model:value="form.password" />
        </a-form-item>

        <div class="w-full flex justify-end mt-2">
          <a-button type="primary" html-type="submit">注册</a-button>
        </div>
      </a-form>
    </MazDialog>
  </div>
</template>
