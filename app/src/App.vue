<template>
  <div id="app">
    <div id="window">
      <header>
        <h1>KevApps</h1>
      </header>
      <md-content class="md-elevation-3 main-content">
        <md-list class="app-list">
          <md-list-item href="https://spanish-flash.kevapps.com">
            <span>Spanish Flash! Tap and Learn</span>
          </md-list-item>
          <md-list-item href="https://eaglelogger.com">
            <span>EagleLogger</span>
          </md-list-item>
        </md-list>
      </md-content>
    </div>
  </div>
</template>

<script>
// import HelloWorld from './components/HelloWorld.vue'

export default {
  name: 'app',
  components: {
    // HelloWorld
  },
  mounted () {
    console.log('Hello!');
  }
}
</script>

<style>
body {
  display: flex;
}

#app {
  display: flex;
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  flex: 1;
  justify-content: center;
}

#window {
  display: flex;
  flex: 1;
  flex-direction: column;
  max-width: 800px;
  align-items: center;
}

header {
  padding: 2rem 0 3rem;
}

.main-content {
  max-width: 800px;
}

.app-list {
  display: block;
  flex: 0;
  max-width: 600px;
}
</style>
