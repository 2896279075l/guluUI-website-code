<template>
  <div class="gulu-tabs">
    <div class="gulu-tabs-nav">
      <div
        class="gulu-tabs-nav-item"
        :class="{ selected: t === selected }"
        @click="select(t)"
        v-for="(t, index) in titles"
        :key="index">
        {{ t }}
      </div>
    </div>
    <div class="gulu-tabs-content">
      <component
        class="gulu-tabs-content-item"
        :class="{ selected: c.props?.title === selected }"
        v-for="(c, index) in defaults"
        :is="c"
        :key="index" />
    </div>
  </div>
</template>

<script lang="ts">
import Tab from "./Tab.vue";
export default {
  props: {
    selected: {
      type: String,
    },
  },
  components: {
    Tab,
  },
  setup(props, context) {
    const defaults = context.slots.default!();
    defaults.forEach((tag) => {
      if (tag.type != Tab) {
        throw new Error("Tabs子标签必须是Tab标签");
      }
    });
    const titles = defaults.map((tag) => {
      return tag.props!.title;
    });

    const select = (title: string) => {
      context.emit("update:selected", title);
    };
    return { defaults, titles, select };
  },
};
</script>

<style lang="scss">
$blue: #40a9ff;
$color: #333;
$border-color: #d9d9d9;
.gulu-tabs {
  &-nav {
    display: flex;
    color: $color;
    border-bottom: 1px solid $border-color;
    position: relative;
    &-item {
      padding: 8px 0;
      margin: 0 16px;
      cursor: pointer;
      &:first-child {
        margin-left: 0;
      }
      &.selected {
        color: $blue;
      }
    }
  }
  &-content {
    padding: 8px 0;
    &-item {
      display: none;
      &.selected {
        display: block;
      }
    }
  }
}
</style>
