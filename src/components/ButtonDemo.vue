<template>
  <div>Button实例页面</div>
  <ButtonV>你好 </ButtonV>
  <ButtonV theme="button">你好</ButtonV>
  <ButtonV theme="link">你好 </ButtonV>
  <ButtonV theme="text">你好 </ButtonV>
</template>

<script lang="ts">
import Button from "../lib/ButtonV.vue";
export default {
  components: {
    ButtonV: Button,
  },
  // setup() {
  //   const onClick = () => {
  //     console.log("hi");
  //   };
  //   return { onClick };
  // },
};
</script>
