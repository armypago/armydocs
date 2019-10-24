<template>
  <DefaultLayout>
    <UserLayer />
    <router-view></router-view>
  </DefaultLayout>
</template>

<script>
import DefaultLayout from "@/components/layout/DefaultLayout.vue";
import UserLayer from "@/components/survey/UserLayer.vue";

export default {
  components: {
    DefaultLayout,
    UserLayer,
  }
};
</script>
