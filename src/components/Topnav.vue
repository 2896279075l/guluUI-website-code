<template>
  <div>
    <div class="topnav">
      <router-link to="/" class="logo">
        <svg class="icon">
          <use xlink:href="#icon-gulu"></use>
        </svg>
      </router-link>
      <ul class="menu">
        <li>
          <router-link to="/doc">文档</router-link>
        </li>
      </ul>
      <svg
        v-if="toggleMenuButtonVisible"
        class="toggleAside"
        @click="toggleMenu">
        <use xlink:href="#icon-menu"></use>
      </svg>
    </div>
  </div>
</template>

<script lang="ts">
import { inject, Ref } from "vue";

export default {
  props: {
    toggleMenuButtonVisible: {
      type: Boolean,
      default: false,
    },
  },
  setup() {
    const menuVisible = inject<Ref<boolean>>("menuVisible");
    const toggleMenu = () => {
      menuVisible!.value = !menuVisible?.value;
    };
    return { toggleMenu };
  },
};
</script>

<style lang="scss" scoped>
$color: #007974;

.topnav {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 20;
  display: flex;
  padding: 16px;
  color: $color;

  > .logo {
    max-width: 6em;
    margin-right: auto;
    justify-content: center;
    align-items: center;
    & > svg {
      width: 32px;
      height: 32px;
    }
  }
  > .menu {
    display: flex;
    white-space: nowrap;
    flex-wrap: nowrap;
    > li {
      margin: 0 1em;
    }
  }
  > .toggleAside {
    width: 32px;
    height: 32px;
    padding: 4px;
    position: absolute;
    left: 16px;
    top: 50%;
    transform: translateY(-50%);
    display: none;
    background: fade-out(black, 0.9);
    border-radius: 20%;
  }
  @media (max-width: 500px) {
    > .menu {
      display: none;
    }
    > .logo {
      margin: auto;
    }
    > .toggleAside {
      display: inline-block;
    }
  }
}
</style>
