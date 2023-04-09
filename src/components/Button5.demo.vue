<demo>
支持显示加载中
</demo>
<template>
  <div>
    <ButtonV loading>加载中</ButtonV>
    <ButtonV>加载完毕</ButtonV>
  </div>
</template>

<script lang="ts">
import ButtonV from "../lib/ButtonV.vue";
export default {
  components: {
    ButtonV,
  },
};
</script>
