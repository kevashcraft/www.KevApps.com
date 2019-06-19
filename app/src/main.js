import Vue from 'vue'
import App from './App.vue'
// Vue Material
import { MdButton, MdContent, MdList } from 'vue-material/dist/components'
import 'vue-material/dist/vue-material.min.css'
import 'vue-material/dist/theme/default.css'

Vue.use(MdButton)
Vue.use(MdContent)
Vue.use(MdList)

Vue.config.productionTip = false

new Vue({
  render: h => h(App),
}).$mount('#app')
