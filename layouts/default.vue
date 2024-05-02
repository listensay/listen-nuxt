<script setup>

</script>

<template>
  <div class="app shadow-md">

    <header class="sticky top-0">
      <AppHeader />
    </header>

    <main class="m-8 overflow-auto">
      <slot />
    </main>

      <footer class="bg-white p-4 border-t text-center">Milk Blog &copy; 2024</footer>
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