<template>
  <q-item
    clickable
    tag="router-link"
    :to="{ name: link }"
  >
    <q-item-section
      v-if="icon"
      avatar
    >
      <q-icon :name="icon" />
    </q-item-section>

    <q-item-section>
      <q-item-label>{{ title }}</q-item-label>
      <q-item-label caption>
        {{ caption }}
      </q-item-label>
    </q-item-section>
  </q-item>
</template>

<script lang="ts">
import { Vue, Component, Prop } from 'vue-property-decorator';

@Component
export default class EssentialLink extends Vue {
  @Prop({ required: true }) title!: string;

  @Prop({ required: true }) caption!: string;

  @Prop({ required: true }) link!: string;

  @Prop() icon!: string;
}
</script>
