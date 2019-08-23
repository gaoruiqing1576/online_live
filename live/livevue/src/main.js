import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import Map from './components/Map'
import Footer from './components/Footer'
import Header from './components/Header'

Vue.component("map_surround",Map);
Vue.component("my-footer",Footer);
Vue.component("my-header",Header);

//将字体图标引入到当前项目中
import "./font/iconfont.css"

Vue.prototype.axios=axios;
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
