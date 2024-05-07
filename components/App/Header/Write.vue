<script setup>
const open = defineModel()

// 文章表单
const article = reactive({
  content: '',
  photos: []
})

// 上传文件
const afterRead = (file) => {
  const forms = new FormData()
  forms.append('file', file.file) // 获取上传图片信息

  useApi()
    .upload(forms)
    .then((res) => {
      article.photos.push(res.data[0].url)
    })
    .catch((err) => {
      console.log(err)
    })
}

// 文件预览
const fileList = ref([])

// 发布文章
const pushArticle = () => {
  console.log(article)
}

const canlce = () => {
  open.value = false
}
</script>

<template>
  <MazDialog v-model="open" :no-close="true" @close="canlce">
    <div class="mb-4">
      <a-textarea
        v-model:value="article.content"
        placeholder="这一刻的想法"
        :auto-size="{ minRows: 8, maxRows: 5 }"
        :bordered="false"
      />
    </div>
    <div class="mb-4">
      <van-uploader v-model="fileList" :after-read="afterRead" :max-count="2" />
    </div>

    <div class="mb-4 flex justify-center">
      <div class="mx-2">
        <MazBtn color="black" pastel @click="canlce">取消</MazBtn>
      </div>
      <div class="mx-2">
        <MazBtn color="secondary" @click="pushArticle">发布</MazBtn>
      </div>
    </div>
  </MazDialog>
</template>
