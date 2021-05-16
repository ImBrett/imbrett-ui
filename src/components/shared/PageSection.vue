<template>
  <div
    class="row q-pa-md justify-center align-center"
    :style="flip ? 'flex-direction: row-reverse' : ''"
  >
    <div class="col-12 col-md-6 self-center">
      <q-card flat>
        <q-card-section class="text-h4 text-accent">
          {{ title }}
        </q-card-section>
        <q-card-section class="text-body1">
          {{ text }}
        </q-card-section>
      </q-card>
    </div>
    <div class="col-12 col-md-6">
      <q-img :src="img" />
    </div>
  </div>
</template>

<script lang="ts">
import { Vue, Component, Prop } from 'vue-property-decorator';

@Component
export default class PageSection extends Vue {
  @Prop({ required: true }) title!: string;

  @Prop({ required: true }) text!: string;

  @Prop({ required: true }) img!: string;

  @Prop() flip!: boolean;
}
</script>
