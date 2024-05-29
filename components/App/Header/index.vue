<template>
  <div class="header bg-white relative text-white">
    <AppHeaderTopBar />
    <div class="header-profile relative">
      <img src="/banner.jpg" class="w-full h-56 max-md:h-52 object-cover bg-cover" alt="bg" />
    </div>
    <div class="profle relative z-10">
      <div>
        <div class="ml-8">
          <div>
            <img src="~/assets/images/avatar.png" class="w-20 h-20 relative shadow rounded-md" alt="avatar" />
          </div>
        </div>
        <div class="ml-8 py-3 px-0 text-sm text-zinc-600">
          <div class="mr-4 flex flex-col">
            <div class="text-lg pb-2">听的说</div>
            <div class="text-sm">不要倒在黎明前的黑夜里</div>
          </div>
        </div>
      </div>
      <div class="absolute right-8 top-16 text-zinc-600">
        <MazBtn color="danger" right-icon="heart" size="sm" rounded-size="md" pastel>のように 18</MazBtn>
      </div>
    </div>
    <!-- bio -->
    <div class="my-4 mx-8 mt-0 border border-zinc-100 rounded-md bg-teal-50">
      <div class="border-b border-zinc-100 p-4">
        <div class="name text-sm text-zinc-800 mb-1">爱好</div>
        <div class="content text-zinc-600 text-sm">编程，画画</div>
      </div>
      <div class="border-b border-zinc-100 p-4">
        <div class="name text-sm text-zinc-800 mb-1">性格</div>
        <div class="content text-zinc-600 text-sm">i人</div>
      </div>
      <div class="p-4">
        <div class="name text-sm text-zinc-800 mb-1">个人主页</div>
        <div class="content text-zinc-600 text-sm">http//:200205.net</div>
      </div>
    </div>
  </div>
</template>

<style lang="less" scoped>
.header {
  .header-profile {
    &:after {
      content: '';
      position: absolute;
      z-index: 9;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: linear-gradient(0deg, rgba(0, 0, 0, 0.17) 0, #8c8c8c5c);
    }
  }

  .profle {
    @apply -mt-12 flex justify-between;
  }
}
</style>
