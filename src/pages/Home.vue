<template>
  <q-page>
    <hero />
    <availability-banner />
    <features />
    <projects />
  </q-page>
</template>

<script lang="ts">
import { Vue, Component } from 'vue-property-decorator';
import Hero from '../components/home/Hero.vue';

@Component({
  components: {
    Hero,
    Features: () => import('../components/home/Features.vue'),
    AvailabilityBanner: () =>
      // eslint-disable-next-line implicit-arrow-linebreak
      import('../components/home/AvailabilityBanner.vue'),
    Projects: () => import('../components/home/Projects.vue'),
  },
})
export default class HomePage extends Vue {}
</script>
