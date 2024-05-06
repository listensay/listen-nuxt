<script setup>
import { defineExpose } from 'vue'

const props = defineProps({
  id: {
    type: String,
    default: ''
  }
})

import 'APlayer/dist/APlayer.min.css';
const { $aplayer } = useNuxtApp()

const list = ref([
  {
    id: 1,
    name: 'Sweetie♡(Be_Mine)',
    url: 'https://m701.music.126.net/20240505094535/89e9900cf58d2be10f88ea04b3465f6a/jdyyaac/5352/025c/0e0f/d8da34699b561dd62de69eabab783080.m4a',
    cover: 'https://p1.music.126.net/0c5VcHAlRMI0B5PUWH4DIQ==/109951163114426850.jpg',
    artist: 'J.Boss&Desweet怼甜',
    lrc: '[00:00.000] 作词 : J.Boss/Desweet\n[00:01.000] 作曲 : J.Boss/Desweet\n[00:26.532]Hook：\n[00:27.002]其实我一切都知道\n[00:28.532]我就在等你说Right Now\n[00:30.433]你却不说主题让我心脏一直在乱跳\n[00:33.728]感到你脸颊在发烫\n[00:35.363]Oh baby住进我心房\n[00:37.105]未来做你的温柔乡\n[00:38.749]让我做你的避风港\n[00:41.310]coz u know u know i can i can love u\n[00:44.567]你就是我的baby girl 每一天都跟我走\n[00:48.114]无所谓别人怎么看只想catch u\n[00:51.608]be my world牵你手 现在到永久\n[00:54.641]VERSE 1:Yo\n[00:55.219]把过去全部都Delete\n[00:56.697]抓住这美妙的机会\n[00:58.454]在梦里就好像闻到了你那So sweet的香味\n[01:01.564]就像那Hermes 一般的迷人\n[01:03.003]连空气都变得那么怡人\n[01:04.874]但我和你表白的时候为何声音变的很迷沉\n[01:08.130]我是你的多拉A梦 把你梦想全部都给你\n[01:11.520]无所忌惮Be Yourself在我面前不需要在意\n[01:14.781]所有成功失败与否 我会努力抓紧你的手臂\n[01:18.249]陪你度过的每一秒都 不管它是否存在任何意义\n[01:21.599]想给你一个吻\n[01:23.579]没信心拿满分\n[01:24.995]应该去关了灯\n[01:26.741]感受你的体温\n[01:28.472]不想继续做那种普通朋友无时不刻把你温柔攥在我手\n[01:32.109]让那些过去Bad Things Just let it go\n[01:34.065]就放心的跟着我走\n[01:35.364]每晚都想让你靠近我心跳\n[01:38.777]晚安忘了说就会让你变得心焦\n[01:42.126]逛街我会主动为你拎包\n[01:43.913]发了新歌我们一起打call\n[01:45.659]对付你的小任性有了新招\n[01:47.568]每一次的溺爱都难忘今宵\n[01:48.868]Hook：\n[01:49.303]其实我一切都知道\n[01:50.909]我就在等你说Right Now\n[01:52.717]你却不说主题让我心脏一直在乱跳\n[01:55.924]感到你脸颊在发烫\n[01:57.685]Oh baby住进我心房\n[01:59.364]未来做你的温柔乡\n[02:01.202]让我做你的避风港\n[02:03.609]coz u know u know i can i can love u\n[02:06.932]你就是我的baby girl 每一天都跟我走\n[02:10.282]无所谓别人怎么看只想catch u\n[02:13.882]be my world牵你手 现在到永久\n[02:21.774]VERSE2 DESWEET:\n[02:30.374]行走的满分情话机器\n[02:32.102]跟你高冷面的对立\n[02:33.876]关于你的痕迹 丘比特的神秘 你的香水就是魅力\n[02:37.272]看到你一眼就会发呆\n[02:38.949]小恶 魔就开始乱猜\n[02:40.706]再等一个礼拜 一定会过很快\n[02:42.631]我的心让我悄悄的对你使坏\n[02:44.341]this boy is mine你们都别碰\n[02:46.124]你那不真实的bo dy将我煽动\n[02:47.771]二十四 小时全天营业只对我有空\n[02:49.525]多想定格这个瞬间变成你手中的phone\n[02:51.340]每句哈尼都特别甜\n[02:53.036]我的生活 开始由你领衔\n[02:54.817]没有你 每一分钟对我都是考验\n[02:56.365]闻着你香味我才能够入眠\n[02:58.377]对你的一切早已陷落\n[02:59.859]刺激多巴胺分泌的诱惑\n[03:01.575]把你掌握 不是强迫 miss Mr. 的意义再也不是错过\n[03:04.469]Hook：\n[03:04.710]其实我一切都知道\n[03:06.273]我就在等你说Right Now\n[03:08.132]你却不说主题让我心脏一直在乱跳\n[03:11.438]感到你脸颊在发烫\n[03:13.545]Oh baby住进我心房\n[03:14.824]未来做你的温柔乡\n[03:16.502]让我做你的避风港\n[03:19.088]coz u know u know i can i can love u\n[03:22.450]你就是我的baby girl 每一天都跟我走\n[03:25.638]无所谓别人怎么看只想catch u\n[03:29.306]be my world牵你手 现在到永久\n[03:32.638]'
  }
])

const Aplayer = ref(null)

function play() {
  Aplayer.value.play()
}

function pause() {
  Aplayer.value.pause()
}

defineExpose({ play, pause })
const emit = defineEmits(['play', 'pause'])


onMounted(async () => {
  const data = await $fetch(`/music/api/playlist/detail?id=${props.id}`, {
    Cookie: 'NMTID=00On6h6H0mskmrqxk4piehyitEdhhwAAAGPRkm40g; JSESSIONID-WYYY=9eZqYTY56Ym5nh1byju5lkzqv%2BY3bUVbjFsx9zJHUXOM9jmnyq1sv%2FGuozo91OOASdXUnAJ57slijBxfjYAJ%5C%2FuPfyG1Nf6hKeWiWa8rK9UfsOE41sM5zQBzR4ndvB9qAlGKYUwErs87OijjE61TJpPZkvNC26BTIDpbAdh4KWsrSUDg%3A1714872988065; _iuqxldmzr_=32; _ntes_nnid=246aab45c0fa8e88479ffd6f3f638927,1714871188086; _ntes_nuid=246aab45c0fa8e88479ffd6f3f638927; WEVNSM=1.0.0; WNMCID=ltgiyl.1714871188796.01.0; ntes_utid=tid._.D1ZVChA354RFFgVVQFaB%252B3R1W9J32Hqg._.0; sDeviceId=YD-CdlmqWz6SRdEFwUAFRaA6yBkT5I3nHqv; playerid=66030874',
  })

  if(data.result) {
    list.value = data.result.tracks.map((item) => {
      return {
        id: item.id,
        name: item.name,
        artist: item.artists.map(el=>el.name).join(','),
        url: `/music/song/media/outer/url?id=${item.id}.mp3`,
        cover: item.album.picUrl.replace(/http:/,'https:'),
        // lrc: getLrc(item.id),
      }
    })
  } else {
    // useToast().warning('获取歌曲列表失败')
  }

  Aplayer.value = new $aplayer({
    container: document.getElementById('player'),
    mini: true,
    lrcType: 1,
    fixed: true,
    audio: [...list.value],
    mutex: true,
    listFolded: true
  })

  Aplayer.value.on('pause', () => {
    emit('pause')
  })

  Aplayer.value.on('play', () => {
    emit('play')
  })
})
</script>

<template>
  <div id="player"></div>
</template>
