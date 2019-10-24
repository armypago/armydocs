<template>
  <v-carousel
    cycle
    hide-delimiter-background
    show-arrows-on-hover
    height="870"
  >
    <v-carousel-item
      v-for="slide in slides"
      :key="slide.title[0]"
      :src="slide.src"
    >
      <v-container fill-height>
        <v-row
          justify="center"
          align="center"
        >
          <v-col class="text-center white--text">
            <div
              v-for="(title,i) in slide.title"
              :key="`title-${i}`"
              class="slide-title"
            >
              {{ title }}
            </div>
            <v-spacer class="spacer"></v-spacer>
            <div
              v-for="(text,i) in slide.text"
              :key="`text-${i}`"
              class="slide-text"
            >
              {{ text }}
            </div>
            <v-btn class="slide-btn" :to="slide.to">
              {{ slide.btn }}
            </v-btn>
          </v-col>
        </v-row>
      </v-container>

    </v-carousel-item>
  </v-carousel>
</template>

<script>
export default {
  data: () => ({
    slides: [
      {
        title: [
          "아미독스는 장병들에게",
          "설문을 진행하고 참여하는 플랫폼입니다."
        ],
        text: [
          "아미독스 프로젝트는 군 내에서 수기로 시행되는 각종 설문조사를",
          "전산화하여 군 인트라넷에 구현한 웹 사이트 체계입니다.",
          "부대 내 각종 설문 작성 및 결과를 분석하는 관리자와",
          "설문 및 수요조사에 참여하는 사용자에게 각각 다른 기능을 제공합니다."
        ],
        src: require("@/assets/landing/carousel1.png"),
        btn: "아미독스 시작하기",
        to: "/"
      },
      {
        title: [
          "전 장병 누구나 설문을 등록하거나",
          "참여하고, 결과를 분석할 수 있습니다."
        ],
        text: [
          "아미독스 프로젝트는 군 내에서 수기로 시행되는 각종 설문조사를",
          "전산화하여 군 인트라넷에 구현한 웹 사이트 체계입니다.",
          "부대 내 각종 설문 작성 및 결과를 분석하는 관리자와",
          "설문 및 수요조사에 참여하는 사용자에게 각각 다른 기능을 제공합니다."
        ],
        src: require("@/assets/landing/carousel2.png"),
        btn: "아미독스 시작하기",
        to: "/"
      }
    ]
  })
};
</script>

<style>
.slide-title {
  font-size: 3rem;
}
.slide-text {
  font-size: 1.1rem;
}
.spacer {
  height: 10px;
}
.slide-btn {
  margin-top: 50px;
  font-size: 1.1rem !important;
  height: 3.3rem !important;
  width: 16rem !important;
  background-color: black !important;
}
</style>