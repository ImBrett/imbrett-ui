<template>
  <page-section
    title="I am certified to build your site"
    text="I have successfully completed the Fast-Track Web Developer program that is
          offered by the Southern Alberta Institute of Technology. I graduated with
          one of the highest marks in the class and learned everything I needed to
          build a complex web application... And I haven't stopped learning since then."
    img="images/certificate.jpeg"
  />
</template>

<script lang="ts">
import { Vue, Component } from 'vue-property-decorator';
import PageSection from '../shared/PageSection.vue';

@Component({
  components: { PageSection },
})
export default class AboutSummary extends Vue {}
</script>

<style lang="scss" scoped>
.stage {
  width: 100%;
}
</style>
