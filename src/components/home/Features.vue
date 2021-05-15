<template>
  <div>
    <div class="q-pt-md row justify-center">
      <div class="text-h2 text-uppercase text-dark"><span>services i offer</span></div>
    </div>
    <page-section
      v-for="(feature, i) in features"
      :key="i"
      :title="feature.title"
      :text="feature.text"
      :flip="i%2===0"
      :img="feature.img"
    />
  </div>
</template>

<script lang="ts">
import { Vue, Component } from 'vue-property-decorator';
import PageSection from '../shared/PageSection.vue';
import { Feature } from './typings';

@Component({
  components: { PageSection },
})
export default class Features extends Vue {
  features: Array<Feature> = [
    {
      title: 'Analytics',
      text:
        'Get the tools you need to get a deeper understanding of your customers and business data. With google anaytics built right in, view how customers are using your services and get insights that makes your data work for you.',
      img: 'images/analytics.svg',
    },
    {
      title: 'Search Engine Optimization',
      text:
        'Take the uppper-hand from your competition by appearing first in search results for your industry.',
      img: 'images/seo.svg',
    },
    {
      title: 'Devops',
      text:
        'From development to production, your site is vigorously tested and errors are logged for quick fixes. This assures your site will run smoothly for many years to come. All services and apps I develop are containerized in the cloud, making for a seamless on-boarding solution that allows your site to be maintained with minimal setup.',
      img: 'images/devops.svg',
    },
    {
      title: 'Security',
      text:
        'I am always paranoid about the security that I offer through the apps that I create and strive to be on the constant lookout to inform you of any security threats that may affect you. I follow best practices laid out by OWASP as guidelines and even welcome an audit to any sites I create for you.',
      img: 'images/security.svg',
    },
  ];
}
</script>
