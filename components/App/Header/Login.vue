<script setup>
const openDialog = defineModel()
const cookie = useCookie('token')

function close() {
    openDialog.value = false
}

const form = reactive({
  username: '',
  password: ''
})

const onFinish = () => {
  useApi().login(form).then(res => {
    cookie.value = res.data
    useToast().success('登录成功')
    openDialog.value = false
  })
}
</script>

<template>
  <div>
    <MazDialog v-model="openDialog" title="登陆" @close="close">
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
  </div>
</template>
