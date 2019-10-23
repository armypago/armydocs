<template>
  <v-app>
    <Toolbar/>

    <v-content>
      <Carousel/>
      <Info/>
      <Contact/>
    </v-content>

    <Footer/>
  </v-app>
</template>

<script>
import Toolbar from "@/components/layout/Toolbar.vue";
import Footer from "@/components/layout/Footer.vue";
import Carousel from "@/components/landing/Carousel.vue";
import Info from "@/components/landing/Info.vue";
import Contact from "@/components/landing/Contact.vue";

export default {
  data: () => ({
    
  }),

  components: {
    Toolbar,
    Footer,
    Carousel,
    Info,
    Contact
  }
};
</script>
