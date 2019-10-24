<template>
  <v-app-bar
    app
    elevation
    height="100"
  >
<<<<<<< HEAD
  <v-container>
    <v-row justify="center" align="center">
=======
  <v-container fluid>
    <v-row align="center">
>>>>>>> jy
      <v-col cols="2">
        <v-row justify="start">
          <v-toolbar-items>
            <v-btn text to="/about">사이트 소개</v-btn>
<<<<<<< HEAD
            <v-btn text to="/about">고객센터</v-btn>
=======
>>>>>>> jy
          </v-toolbar-items>
        </v-row>
      </v-col>

      <v-col cols="8">
        <v-row justify="center">
          <v-toolbar-items>
            <v-btn text to="/">
              <v-img
                :src="require('@/assets/logo_colored.png')"
                contain
              ></v-img>
            </v-btn>
          </v-toolbar-items>
        </v-row>
      </v-col>
      
      <v-col cols="2">
        <v-row justify="end">
          <v-toolbar-items>
<<<<<<< HEAD
            <v-btn text to="/about">로그인</v-btn>
            <v-btn text to="/survey">회원가입</v-btn>
=======
            <v-btn text to="/login">로그인</v-btn>
            <v-btn text to="/login">회원가입</v-btn>
>>>>>>> jy
          </v-toolbar-items>
        </v-row>
      </v-col>

    </v-row>

  </v-container>
    
  </v-app-bar>
</template>

<style>
.theme--light.v-btn--active::before {
  opacity: 0 !important;
}

.v-btn.v-size--default {
  font-size: 1.1rem !important;
}

.v-btn:before {
  background-color: transparent !important;
}
</style>