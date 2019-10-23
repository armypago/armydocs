<template>
  <v-col cols="5">
    <div class="info-image">
      <v-img :src="info.img"></v-img>
    </div>
  </v-col>
</template>

<script>
  export default {
    props: ['info']
  }
</script>
