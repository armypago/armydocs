<template>
  <v-col cols="4">
    <div class="info-title">
      {{ info.title }}
    </div>
    <div
      v-for="content in info.contents"
      :key="content"
      class="info-content"
    >
      {{ content }}
    </div>
  </v-col>
</template>


<script>
  export default {
    props: ['info']
  }
</script>

<style>
.info-content {
  font-size: 1.1rem;
}
.info-title {
  font-size: 2rem;
  font-weight: bold;
  margin-bottom: 1.5rem;
}
</style>