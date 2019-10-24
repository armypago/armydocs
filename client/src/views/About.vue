<template>
  <DefaultLayout>
    <Carousel />
    <Info />
    <Contact />
  </DefaultLayout>
</template>

<script>
import DefaultLayout from "@/components/layout/DefaultLayout.vue";
import Carousel from "@/components/landing/Carousel.vue";
import Info from "@/components/landing/Info.vue";
import Contact from "@/components/landing/Contact.vue";

export default {
  components: {
    DefaultLayout,
    Carousel,
    Info,
    Contact
  }
};
</script>
