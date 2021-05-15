<template>
  <div>

    <div class="row justify-center">
      <p class="text-h2 text-uppercase text-dark">
        <span>Projects I'm actively developing</span>
      </p>
    </div>

    <div class="row q-pa-md q-col-gutter-md">
      <div
        v-for="(project, i) in projects"
        :key="i"
        class="col-12 col-sm-6 col-md-4 col-xl-3"
      >
        <q-card>
          <q-img :src="project.img">
            <div class="absolute-bottom text-right">
              <p class="text-h6">{{ project.title }}</p>
              <span class="text-subtitle1">{{ project.description }}</span>
            </div>
          </q-img>
          <!--
            TODO:
            I have no idea why I have to wrap these buttons in an a tag...
            setting the tag attribute on q-btn works fine everywhere else except in
            these cards?
          -->
          <a
            target="_blank"
            :href="project.link"
          >
            <q-btn
              flat
              round
              color="accent"
              icon="fas fa-eye"
            />
          </a>
          <a
            target="_blank"
            :href="project.repo"
          >
            <q-btn
              flat
              round
              color="black"
              icon="fab fa-github"
            />
          </a>
        </q-card>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { Vue, Component } from 'vue-property-decorator';
import { Project } from './typings';

@Component
export default class Projects extends Vue {
  projects: Array<Project> = [
    {
      title: 'Style Guide',
      description:
        'A styleguide written in SASS that is meant to adhere to material design specifications',
      img: 'images/styleguide.jpg',
      link: 'https://imbrett.github.io/styleguide',
      repo: 'https://github.com/imbrett/styleguide',
    },
    {
      title: 'CovRT',
      description: 'An application to track the stats of Covid-19',
      img: 'images/covrt.jpg',
      link: 'https://covrt.herokuapp.com',
      repo: 'https://github.com/imbrett/covrt',
    },
  ];
}
</script>
