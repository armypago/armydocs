<template>
  <DefaultLayout>
    <router-view></router-view>
  </DefaultLayout>
</template>

<script>
import DefaultLayout from "@/components/layout/DefaultLayout.vue";

export default {
  components: {
    DefaultLayout,
  }
};
</script>
