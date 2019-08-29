import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index.vue'
import Header from './views/Header.vue'
import Login from './views/Login.vue'
import Details from './views/Details.vue'
import MapSearch from './views/Map_search.vue'
import Resourses from './views/Resourses.vue'

Vue.use(Router)

export default new Router({
  routes: [
    { path: '/',component: Index}, 
    { path: '/header',component: Header},
    { path: '/login',component: Login},
    { path: '/details',component: Details},
    { path: '/mapSearch',component:MapSearch},
    { path: '/resourses',component:Resourses}
  ]
})
