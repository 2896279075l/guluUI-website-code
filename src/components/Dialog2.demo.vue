<demo>
一键打开 Dialog
</demo>
<template>
  <div>
    <ButtonV @click="showDialog">打开对话框</ButtonV>
  </div>
</template>

<script lang="ts">
import ButtonV from "../lib/ButtonV.vue";
import { ref, h } from "vue";
import { openDialog } from "../lib/openDialog";
export default {
  components: {
    ButtonV,
  },
  setup() {
    const showDialog = () => {
      openDialog({
        title: h("strong", {}, "标题"),
        content: "你好",
        ok() {
          console.log("ok");
        },
        cancel() {
          console.log("cancel");
        },
      });
    };
    return {
      showDialog,
    };
  },
};
</script>
