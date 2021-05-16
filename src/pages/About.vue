<template>
  <q-page>
    <about-summary />
    <mission />
    <certificates />
    <skills />
  </q-page>
</template>

<script lang="ts">
import { Vue, Component } from 'vue-property-decorator';
import AboutSummary from '../components/about/AboutSummary.vue';
import Mission from '../components/about/Mission.vue';
import Certificates from '../components/about/Certificates.vue';
import Skills from '../components/about/Skills.vue';

@Component({
  components: {
    AboutSummary,
    Mission,
    Certificates,
    Skills,
  },
})
export default class AboutPage extends Vue {}
</script>
