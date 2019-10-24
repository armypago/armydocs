import Dashboard from '@/views/Dashboard.vue'

export default [
  {
    path: '*',
    redirect: '/about',
  },
  {
    path: '/',
    redirect: 'survey',
    component: Dashboard,
    children: [
      {
        path: 'survey',
        name: 'SurveyList',
        component: () => import('@/components/survey/List.vue')
      },
      {
        path: 'mysurvey',
        name: 'MySurveyList',
        component: () => import('@/components/survey/MyList.vue')
      },
      {
        path: 'admin',
        name: 'Admin',
        component: () => import('@/components/admin/UserList.vue')
      }
    ]
  },
  {
    path: '/about',
    name: 'About',
    component: () => import('@/views/About.vue')
  },
  {
    path: '/mypage',
    name: 'Mypage',
    component: () => import('@/views/MyPage.vue')
  },
  {
    path: '/login',
    name: 'Login',
    component: () => import('@/views/Login.vue')
  },
  {
    path: '/register',
    name: 'Register',
    component: () => import('@/views/Register.vue')
  },
]
