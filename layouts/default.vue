<script setup>

</script>

<template>
  <div class="app min-h-[100vh] shadow-md">

    <van-sticky :offset-top="0">
      <header class="shadow-sm">
          <AppHeader />
        </header>
    </van-sticky>

    <main class="m-8">
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <p>213</p>
      <slot />
    </main>
    <van-sticky :offset-bottom="0" position="bottom">
      <footer class="bg-white p-4 border-t text-center">Milk Blog &copy; 2024</footer>
    </van-sticky>
  </div>
</template>

<style lang="less" scoped>

</style>

<style lang="less">
.app {
  width: 620px;
  @apply overflow-auto bg-white mx-auto;

  @media screen and (max-width: 750px) {
    width: 100%;
  }
}
</style>