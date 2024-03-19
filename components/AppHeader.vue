<script setup>

</script>

<template>
  <div class="header bg-white">
    <div class="header-bar">
      213
    </div>
    <div class="header-profile relative brightness-50">
      <img src="~/assets/images/bg.jpg" class="w-full h-64 max-md:h-52 object-cover bg-cover" alt="bg">
    </div>
    <div class="profle">

      <div class="flex justify-end items-center">
        <div class="mr-4 flex flex-col items-end">
          <div class=" text-white text-xl">Milk</div>
        </div>
        <div>
          <img src="~/assets/images/avatar.png" class="w-20 h-20 relative rounded-md shadow" alt="avatar">
        </div>
      </div>

      <div class="desc mb-2 py-4 px-0 flex justify-end text-sm text-zinc-600">不要倒在黎明前的黑夜里</div>
    </div>
  </div>
</template>

<style lang="less" scoped>
.header {
  .profle {
    @apply  -mt-16 mr-8;
  }
}
</style>
