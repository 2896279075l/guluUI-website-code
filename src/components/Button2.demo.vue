<demo>
支持 size
</demo>
<template>
  <div>
    <div>
      <ButtonV size="big">大大大 </ButtonV>
      <ButtonV>普普通 </ButtonV>
      <ButtonV size="small">小小小</ButtonV>
    </div>
    <div>
      <ButtonV theme="link" size="big">大大大 </ButtonV>
      <ButtonV theme="link">普普通 </ButtonV>
      <ButtonV size="small" theme="link">小小小</ButtonV>
    </div>
    <div>
      <ButtonV size="big" theme="text">大大大 </ButtonV>
      <ButtonV theme="text">普普通 </ButtonV>
      <ButtonV size="small" theme="text">小小小</ButtonV>
    </div>
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
