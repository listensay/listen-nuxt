<script setup></script>

<template>
  <div class="app shadow-sm">
    <header class="sticky top-0 border-b border-slate-100">
      <AppHeader />
    </header>

    <main>
      <slot />
    </main>

    <footer class="bg-white p-4 border-t text-center">Milk Blog &copy; 2024</footer>
  </div>
</template>

<style lang="less" scoped></style>

<style lang="less">
.app {
  width: 580px;
  @apply overflow-auto bg-white mx-auto;

  @media screen and (max-width: 750px) {
    width: 100%;
  }
}
</style>
