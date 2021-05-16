<template>
  <q-layout view="lHh Lpr lFf">
    <q-header elevated>
      <q-toolbar class="bg-dark">
        <q-btn
          flat
          dense
          round
          icon="menu"
          aria-label="Menu"
          @click="leftDrawerOpen = !leftDrawerOpen"
        />

        <q-toolbar-title>
          ImBrett
        </q-toolbar-title>

        <div>
          <q-btn
            type="a"
            target="_blank"
            href="https://www.linkedin.com/in/iversonb/"
            flat
            dense
            round
            icon="fab fa-linkedin"
            aria-label="My Linkedin"
          />

          <q-btn
            type="a"
            target="_blank"
            href="https://www.github.com/imbrett"
            flat
            dense
            round
            icon="fab fa-github"
            aria-label="My Github"
          />
        </div>
      </q-toolbar>
    </q-header>

    <q-drawer
      v-model="leftDrawerOpen"
      show-if-above
      bordered
      content-class="bg-grey-1"
    >
      <q-list>
        <q-item-label
          header
          class="text-grey-8"
        >
          Essential Links
        </q-item-label>
        <essential-link
          v-for="(link, i) in linksData"
          :key="i"
          :title="link.title"
          :caption="link.caption"
          :icon="link.icon"
          :link="link.link"
        />
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script lang="ts">
import { Vue, Component } from 'vue-property-decorator';
import EssentialLink from '../components/shared/EssentialLink.vue';

@Component({
  components: { EssentialLink },
})
export default class MainLayout extends Vue {
  leftDrawerOpen = false;

  linksData = [
    {
      title: 'Home',
      caption: 'homepage',
      icon: 'fas fa-home',
      link: 'app.home',
    },
    {
      title: 'About',
      caption: 'About me',
      icon: 'fas fa-question',
      link: 'app.about',
    },
  ];
}
</script>
