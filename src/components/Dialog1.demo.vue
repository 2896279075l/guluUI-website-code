<demo>
常规使用
</demo>
<template>
  <div>
    <ButtonV @click="toggle">打开对话框</ButtonV>
    <Dialog
      v-model:visible="x"
      :closeOnClickOverlay="false"
      :ok="f1"
      :cancel="f2">
      <template v-slot:content>
        <strong>hi</strong>
        <div>hi2</div>
      </template>
      <template v-slot:title>
        <strong>加粗的标题</strong>
      </template>
    </Dialog>
  </div>
</template>

<script lang="ts">
import Dialog from "../lib/Dialog.vue";
import ButtonV from "../lib/ButtonV.vue";
import { ref } from "vue";
import { openDialog } from "../lib/openDialog";
export default {
  components: {
    Dialog,
    ButtonV,
  },
  setup() {
    const x = ref(false);
    const toggle = () => {
      x.value = !x.value;
    };
    const f1 = () => {
      return false;
    };
    const f2 = () => {};
    return {
      x,
      toggle,
      f1,
      f2,
    };
  },
};
</script>
