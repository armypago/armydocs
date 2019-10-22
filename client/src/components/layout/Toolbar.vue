<template>
        <v-app-bar
            app
            elevation
            height="100"
        >
            <v-toolbar-items>
                <v-btn text to="/about">이용가이드</v-btn>
                <v-btn text to="/about">고객센터</v-btn>
            </v-toolbar-items>

            <v-spacer></v-spacer>

            <v-toolbar-items>
                <v-btn text to="/about">
                    <v-img :src="require('@/assets/logo_colored.png')" contain height="200"></v-img>
                </v-btn>
            </v-toolbar-items>

            <v-spacer></v-spacer>

            <v-toolbar-items>
                <v-btn text to="/about">로그인</v-btn>
                <v-btn text to="/survey">회원가입</v-btn>
            </v-toolbar-items>
        </v-app-bar>
</template>