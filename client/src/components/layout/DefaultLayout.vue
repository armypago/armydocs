<template>
  <v-app>
    <Toolbar/>
      <v-content>
        <slot></slot>
      </v-content>
    <Footer/>
  </v-app>
</template>

<script>
import Toolbar from "@/components/layout/Toolbar.vue";
import Footer from "@/components/layout/Footer.vue";

export default {
  components: {
    Toolbar,
    Footer
  }
};
</script>
