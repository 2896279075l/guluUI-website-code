<template>
  <div>Dialog示例页面</div>
  <h1>示例1</h1>
  <ButtonV @click="toggle">toggle</ButtonV>
  <Dialog
    v-model:visible="x"
    :onClickOverlay="true"
    :ok="f1"
    :cancel="f2"></Dialog>
</template>

<script lang="ts">
import Dialog from "../lib/Dialog.vue";
import ButtonV from "../lib/ButtonV.vue";
import { ref } from "vue";
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
      return true;
    };
    const f2 = () => {};
    return { x, toggle, f1, f2 };
  },
};
</script>
