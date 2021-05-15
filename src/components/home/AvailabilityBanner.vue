<template>
  <div class="banner q-py-md text-center bg-dark">
    <p class="text-h3 text-white"> I'm available for hire</p><br />
    <q-btn
      color="accent"
      :to="{name: 'app.about'}"
      size="large"
    >
      Find out more
    </q-btn>
  </div>
</template>

<script lang="ts">
import { Vue, Component } from 'vue-property-decorator';

@Component
export default class AvailabilityBanner extends Vue {}
</script>

<style lang="scss" scoped>
.banner {
  width: 100%;
}
</style>
