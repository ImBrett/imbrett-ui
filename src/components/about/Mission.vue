<template>
  <div class="stage q-pa-xl q-my-xl">
    <div class="row justify-around text-center">
      <span class="text-h6">
        I am a results-driven, detail-orientated individual who enjoys solving
        complex puzzles that will attain success for both myself and the parties
        that seek my services. I believe in having a good time doing what I love,
        and I love what I do.
      </span>
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
