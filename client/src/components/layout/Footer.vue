<template>
    <v-footer class="footer" dark padless>
        <v-container>
            <v-row justify="center" no-gutters>
                <v-btn
                    v-for="link in links"
                    :key="link.text"
                    color="white" text rounded class="my-2"
                >{{ link.text }}
                </v-btn>
            </v-row>
            <v-row justify="center" no-gutters>

            </v-row>
            <v-row justify="center" no-gutters>

            </v-row>
            <v-row justify="center" no-gutters>
                <v-btn
                    v-for="policy in policies"
                    :key="policy.text"
                    color="white" text rounded class="my-2"
                >{{ policy.text }}
                </v-btn>
            </v-row>
            <v-row justify="center" no-gutters>
                ARMYDOCS 2019 ⓒ All Rights Reserved.
            </v-row>
        </v-container>
    </v-footer>
</template>

<style>
    .footer{
        background-color: #343434 !important;
        color:
    }
    .footer-link{
        color: #c2c2c2 !important;
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