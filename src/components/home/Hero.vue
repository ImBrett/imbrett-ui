<template>
  <header class="hero bg-dark">
    <div id="bg-effects">
      <span />
      <span />
      <span />
      <span />
      <span />
    </div>
    <div class="row q-pa-xl justify-around text-center relative-position">
      <div class="col-md-6">
        <div class="text-h1 text-uppercase">
          <span>hi,</span><br />
          <span class="text-bold q-mb-lg">I'm Brett</span>
        </div>
        <div class="subtitle-1">
          I am a full-stack developer that develops and designs beautiful web
          solutions to help solve everyday business problems.
        </div>
        <div class="row q-gutter-md justify-center q-mt-lg">
          <q-btn
            color="accent"
            icon="fab fa-linkedin"
            type="a"
            target="_blank"
            href="https://www.linkedin.com/in/iversonb/"
          >
            Connect
          </q-btn>
          <q-btn
            type="a"
            target="_blank"
            href="https://www.github.com/imbrett"
            color="black"
            icon="fab fa-github"
          >
            View
          </q-btn>
        </div>
      </div>
    </div>
  </header>
</template>

<script lang="ts">
import { Vue, Component } from 'vue-property-decorator';

@Component
export default class Hero extends Vue {}
</script>

<style scoped>
.hero,
.hero-title,
.hero-slogan {
  position: relative;
}

.hero {
  min-height: 90vh;
  width: 100%;
  color: #ffffff;
}

#bg-effects,
#bg-effects > span {
  position: absolute;
  height: 12rem;
}

#bg-effects {
  width: 100%;
  height: 100%;
  overflow: hidden;
  transform: skewY(-6deg);
  transform-origin: 0;
  background: linear-gradient(
    150deg,
    hsl(210, 84%, 24%) 15%,
    hsl(210, 84%, 34%) 70%,
    hsl(210, 84%, 54%) 94%
  );
}

#bg-effects > span:first-child {
  width: calc(100% / 3);
  left: calc(calc(calc(100% / 3) / 2) * -1);
  background: hsl(210, 84%, 24%) 15%;
}

#bg-effects > span:nth-child(2) {
  width: calc(100% / 3);
  top: 0;
  left: calc(calc(100% / 3) / 2);
  right: auto;
  background: hsl(210, 84%, 24%) 15%;
}

#bg-effects > span:nth-child(3) {
  width: calc(100% / 3);
  left: calc(calc(calc(100% / 3) / 2) + calc(100% / 3));
  bottom: auto;
  background-image: linear-gradient(
    90deg,
    hsl(210, 84%, 24%) 15%,
    hsl(210, 84%, 14%)
  );
}

#bg-effects > span:nth-child(4) {
  width: calc(100% / 3);
  top: calc(190px * 2);
  right: calc(calc(calc(100% / 3) / 2) * -1);
  background-image: linear-gradient(
    45deg,
    hsl(210, 84%, 24%) 75%,
    hsl(210, 84%, 14%)
  );
}

#bg-effects > span:nth-child(5) {
  width: calc(100% / 3);
  bottom: 0;
  background: hsl(210, 84%, 24%);
}
</style>
