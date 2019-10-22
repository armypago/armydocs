import Home from '@/views/Home.vue'

export default [
    {
        path: '/about',
        name: 'About',
        component: () => import('@/views/About.vue')
    },
    {
        path: '/',
        redirect: '/survey',
        component: Home,
        children: [
            {
                path: '/survey',
                name: 'SurveyList',
                component: () => import('@/components/survey/List.vue')
            },
            {
                path: '/mypage',
                name: 'Mypage',
                component: () => import('@/components/Mypage.vue')
            },
        ]
    }
]