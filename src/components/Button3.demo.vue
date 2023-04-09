<demo>
支持 level
</demo>
<template>
  <div>
    <div>
      <ButtonV level="main">主要按钮 </ButtonV>
      <ButtonV>普通按钮 </ButtonV>
      <ButtonV level="danger">危险按钮</ButtonV>
    </div>
    <div>
      <ButtonV theme="link" level="main">主要链接按钮 </ButtonV>
      <ButtonV theme="link">普通链接按钮 </ButtonV>
      <ButtonV theme="link" level="danger">危险链接按钮</ButtonV>
    </div>
    <div>
      <ButtonV theme="text" level="main">主要文字按钮 </ButtonV>
      <ButtonV theme="text">普通文字按钮 </ButtonV>
      <ButtonV theme="text" level="danger">危险文字按钮</ButtonV>
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
