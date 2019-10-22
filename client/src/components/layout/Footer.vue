<template>
    <v-footer class="footer" height="260" dark padless>
        <v-container>
            <v-row justify="center" class="footer-link">
                <v-btn
                    v-for="link in links"
                    :key="link.text"
                    class="footer-link my-2"
                    text rounded
                >{{ link.text }}
                </v-btn>
            </v-row>

            <v-row justify="center" class="footer-text">
                육군본부 정보체계관리단 일병 정희성, 일병 최준영, 일병 이지수, 중위 김은진
                </v-row>
            <v-row justify="center" class="footer-text mb-4">
                고객지원 : 010-3275-1025 | E-mail : qlcskfgml78@naver.com | 운영시간 : 10:00~19:00 주말/공휴일 제외
            </v-row>

            <v-row justify="center">
                <v-btn
                    v-for="policy in policies"
                    :key="policy.text"
                    class="footer-link my-2"
                    text rounded
                >{{ policy.text }}
                </v-btn>
            </v-row>

            <v-row justify="center" class="footer-text">
                ARMYDOCS 2019 ⓒ All Rights Reserved.
            </v-row>
        </v-container>
    </v-footer>
</template>

<style>
    .footer{
        background-color: #343434 !important;
    }
    .footer-link{
        color: #c2c2c2 !important;
        font-size: 1.1rem !important;
    }
    .footer-text{
        color: #717171 !important;
        font-size: 0.85rem !important;
    }
</style>

<script>
    export default {
        data: () => ({
            links: [
                { text: '아미독스 소개', to: '/about' },
                { text: '개발자 소개', to: '/about' },
                { text: '문의하기', to: '/about' },
                { text: '이용 가이드', to: '/about' },
            ],
            policies: [
                { text: '이용약관', to: '/about' },
                { text: '개인정보처리방침', to: '/about' },
            ],
        }),
    }
</script>