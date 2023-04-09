<demo>
支持 disabled
</demo>
<template>
  <ButtonV disabled>禁用按钮 </ButtonV>
  <ButtonV theme="link" disabled>禁用链接按钮</ButtonV>
  <ButtonV theme="text" disabled>禁用按钮 </ButtonV>
</template>

<script lang="ts">
import ButtonV from "../lib/ButtonV.vue";
export default {
  components: {
    ButtonV,
  },
};
</script>
