<template>
  <div>
    <v-divider class="contact-divider"></v-divider>
    <v-form>
      <v-container class="contact-box">

        <v-row justify="center">
          <div class="contact-title">
            CONTACT US
            <div class="contact-title-bar"></div>
          </div>
        </v-row>

        <v-row justify="center" class="contact-input">
          <v-col cols="5">
            <v-select
              class="contact-text"
              :items="military"
              label="소속"
              outlined
            ></v-select>
          </v-col>

          <v-col cols="5">
            <v-text-field
              class="contact-text"
              label="소속부대"
              outlined
            ></v-text-field>
          </v-col>
        </v-row>

        <v-row justify="center" class="contact-input">
          <v-col cols="5">
            <v-text-field
              class="contact-text"
              label="이름"
              outlined
            ></v-text-field>
          </v-col>

          <v-col cols="5">
            <v-text-field
              class="contact-text"
              label="연락처"
              outlined
            ></v-text-field>
          </v-col>
        </v-row>

        <v-row justify="center" class="contact-area">
          <v-col cols="10">
            <v-textarea
              rows="20"
              outlined
              label="내용을 입력해주세요"
              class="contact-text"
            ></v-textarea>
          </v-col>
        </v-row>

        <v-row justify="center">
          <v-col cols="10">
            <v-row justify="end">
              <v-btn
                class="contact-btn"
                color="error"
              >문의하기
              </v-btn>
            </v-row>
            </v-col>
        </v-row>

      </v-container>
    </v-form>
  </div>
</template>

<style>
.v-input .v-label,
.v-text-field input {
  font-size: 1.2rem;
}
.contact-input {
  height: 5rem !important;
}
.contact-area {
  height: 26rem !important;
}
.contact-title {
  font-size: 1.6rem;
  font-weight: bold;
  margin-bottom: 2.5rem;
}
.contact-title-bar {
  height: 3.1px;
  width: 10rem;
  background: #000;
}
.contact-divider {
  margin-top: 3rem;
  margin-bottom: 5rem;
}
.contact-btn {
  height: 3.5rem !important;
  width: 13rem !important;
  font-size: 1.2rem !important;
  font-weight: bold;
}
</style>

<script>
export default {
  data: () => ({
    military: ["육군", "해군", "공군", "국직"]
  })
};
</script>