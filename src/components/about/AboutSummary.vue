<template>
  <div class="stage text-white q-pa-xl bg-dark">
    <div class="row">
      <div class="text-h3 text-accent text-uppercase q-mb-md">
        “Before software can be reusable it first has to be usable.”
      </div>
      <div class="text-subtitle2">- Ralph Johnson</div>
    </div>
  </div>
</template>

<script lang="ts">
import { Vue, Component } from 'vue-property-decorator';

@Component
export default class AboutSummary extends Vue {}
</script>

<style lang="scss" scoped>
.stage {
  width: 100%;
}
</style>
