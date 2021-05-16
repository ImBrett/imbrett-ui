<template>
  <div class="q-pa-md">
    <div class="text-center">
      <div class="text-h3 text-dark text-uppercase q-mb-md">
        <span>Skills</span>
      </div>
    </div>
    <q-card>
      <q-tabs
        v-model="currentTab"
        class="bg-dark text-white"
        active-color="accent"
        indicator-color="accent"
        align="justify"
        narrow-indicator
      >
        <q-tab
          v-for="(tab, i) in tabs"
          :key="i"
          :name="tab.name"
          :label="tab.label"
        />
      </q-tabs>

      <q-separator />

      <q-tab-panels
        v-model="currentTab"
        animated
      >
        <q-tab-panel
          v-for="(tab, i) in tabs"
          :key="i"
          :name="tab.name"
        >
          <div class="text-h6 text-dark">{{ tab.title }}</div>
          <div class="text-body1">
            <q-list>
              <q-item
                v-for="(item, i) in tab.skills"
                :key="i"
              >
                <q-item-section avatar>
                  <q-icon
                    color="positive"
                    name="check_circle"
                  />
                </q-item-section>

                <q-item-section>{{ item }}</q-item-section>
              </q-item>
            </q-list>
          </div>
        </q-tab-panel>
      </q-tab-panels>
    </q-card>
  </div>
</template>

<script lang="ts">
import { Vue, Component } from 'vue-property-decorator';

@Component
export default class Skills extends Vue {
  currentTab = 'softSkills';

  tabs = [
    {
      name: 'softSkills',
      label: 'Soft Skills',
      title: 'Soft Skills',
      skills: [
        'Accustomed to working in a team environment',
        'Adept at trouble shooting and risk management',
        'Understanding of agile and SCRUM workflows',
        'Adapted to a progressive conflict and issue resolution style provided by my first employer',
        'The ability to convey thoughts and ideas to the level of the person I am speaking to',
        'Very quick learner, rarely having to be taught how to do something twice',
        'The ability to balance the serious sides of life with the light-hearted sides of life',
        'I get great satisfaction from helping others achieve their goals',
      ],
    },
    {
      name: 'techSkills',
      label: 'Tech Skills',
      title: 'Technology Skills',
      skills: [
        'Ability to write clean, maintainable, well tested code',
        'Linux operating systems',
        'Microsoft office and libreoffice applications',
        'Relational Database Management Systems and Object Relational Managers',
        'DevOPS and release management cycles',
        'Gitflow workflows',
        'Microservice archetictures and container systems',
      ],
    },
    {
      name: 'languages',
      label: 'Languages',
      title: 'Languages and frameworks',
      skills: [
        'Typescript',
        'PHP',
        'Rust',
        'Github - git-flow, actions, pages, security',
        'Docker',
        'Ansible',
        'Kubernetes',
        'SQL',
        'HTML/PUG',
        'CSS/SASS',
        'Bash',
        'Actix-web',
        'Laravel',
        'Lumen',
        'VueJS',
        'ReactJS',
        'Svelte',
      ],
    },
  ];
}
</script>
