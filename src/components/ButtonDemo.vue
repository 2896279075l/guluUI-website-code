<template>
  <div>Button实例页面</div>
  <h1>示例1</h1>
  <div>
    <ButtonV>你好 </ButtonV>
    <ButtonV theme="button">你好</ButtonV>
    <ButtonV theme="link">你好 </ButtonV>
    <ButtonV theme="text">你好 </ButtonV>
  </div>
  <h1>示例2</h1>
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
  <h1>示例3</h1>
  <div>
    <div>
      <ButtonV level="main">主要按钮</ButtonV>
      <ButtonV>普通按钮</ButtonV>
      <ButtonV level="danger">危险按钮</ButtonV>
    </div>

    <div>
      <ButtonV theme="link" level="main">主要链接按钮</ButtonV>
      <ButtonV theme="link">普通链接按钮</ButtonV>
      <ButtonV theme="link" level="danger">危险链接按钮</ButtonV>
    </div>
    <div>
      <ButtonV theme="text" level="main">主要文字按钮</ButtonV>
      <ButtonV theme="text">普通文字按钮</ButtonV>
      <ButtonV theme="text" level="danger">危险文字按钮</ButtonV>
    </div>
  </div>
  <h1>示例4</h1>
  <div>
    <ButtonV disabled>禁用按钮</ButtonV>
    <ButtonV theme="link" disabled>禁用链接按钮</ButtonV>
    <ButtonV theme="text" disabled>禁用文字按钮</ButtonV>
  </div>
  <h1>示例5</h1>
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
  setup() {
    const onClick = () => {
      console.log("hi");
    };
    return { onClick };
  },
};
</script>
