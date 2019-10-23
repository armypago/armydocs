<template>
  <v-container>
    <v-row
      v-for="info in infos"
      :key="info.title"
      justify="center"
      class="info-box"
    >
      <template v-if="info.left">
        <InfoText :info="info"/>
        <v-col cols="1"></v-col>
        <InfoImage :info="info"/>
      </template>
      <template v-else>
        <InfoImage :info="info"/>
        <v-col cols="1"></v-col>
        <InfoText :info="info"/>
      </template>
    </v-row>
  </v-container>

</template>

<script>
import InfoText from "@/components/landing/InfoText.vue";
import InfoImage from "@/components/landing/InfoImage.vue";

export default {
  components: {
    InfoText, InfoImage
  },
  data: () => ({
    infos: [
      {
        title: '군 장병 설문 플랫폼 ‘아미독스’',
        contents: [
          '아미독스는 군 내에서 수기로 시행되는 각종 설문조사를 전산화하여 군 인트라넷에 구현한 웹 사이트 체계입니다. 부대 내 각종 설문 작성 및 결과를 분석하는 관리자와 설문 및 수요조사에 참여하는 사용자에게 각각 다른 기능을 제공합니다.',
          '사용자는 관리자에게 승인받은 병사들로 구성되며, 지정 기간 내에 등록된 설문을 제출하거나 수정할 수 있습니다. 또한 자신이 속한 부대를 대상으로 설문조사를 시행할 수도 있습니다. 많은 이용/채택 부탁 드립니다.',
        ],
        img: require('@/assets/landing/card1.png'),
        left: true,
      },
      {
        title: '사업전망',
        contents: [
          '현재 군 내 설문조사는 수기로 작성한 뒤 담당자가 해당 내용을 일일이 타이핑해 취합되고 있습니다.',
          '이러한 단순 업무를 위해 출장 및 야근을 하는 병사들이 많은데, 아미독스는 이 과정을 전산화하여 불필요한 업무와 비용을 줄이는 것을 목표로 합니다.',
          '단순히 결과만 출력하는 기존 설문조사와 다르게 아미독스는 빅데이터 분석을 통해 여러 통계수치를 그래프화해, 부대에서 특정 사업을 기획할 때 세부사항을 결정하는 데 도움이 됩니다. ',
          '추후 아미독스의 이용률이 높아져 커뮤니티화된다면, 병사 개개인의 활용성도 커질 것으로 보입니다.',
          '그 사례로, 최근 개최된 국방 K-Startup과 같은 군 내 공모전에 참여한 병사들이 실제 기획 단계에서 아이디어에 대한 실수요를 예측 못 해 탈락하는 경우가 많았는데, 개인이 중대 이상의 수요를 조사하는 건 어렵기 때문입니다.',
          '따라서 병사들끼리도 수요조사가 가능하면, 대한민국 국군의 발전에 기여하는 다양한 아이디어 창출과 새로운 소통의 장을 만들 수 있을 것입니다.',
        ],
        img: require('@/assets/landing/card2.png'),
        left: false,
      },
      {
        title: '개발전망',
        contents: [
          '아미독스는 웹 기반 서비스로, 웹 서버는 Tomcat과 Spring을 기반으로 Restful 하게 구축하며, POI 라이브러리를 활용해 엑셀 파일을 관리합니다. ',
          'DB는 MySQL을 사용하고, Hadoop으로 집계된 데이터를 분석합니다. 또한 ELK Stack을 사용해 대규모 요청에 따른 서버 상태를 모니터링합니다.',
          '웹 클라이언트는 Vue.js를 활용해 SPA로 구축하며, Vuetify와 Webpack, Babel을 사용해 다양한 브라우저를 지원하는 반응형 웹앱을 지원합니다. ',
          '추가로 애플리케이션도 추가 개발하여 모바일 편의성을 극대화할 예정입니다.',
          '아미독스 프로젝트가 국군에서 공식적으로 운영되는 체계로 채택된다면, 수많은 장병들을 대상으로 집계된 데이터들이 통합된 환경에서 관리 및 운용될 수 있으며, 현재 4차 산업혁명 시대를 맞아 진행 중인 여러 빅데이터 및 머신러닝 프로젝트에서 더 유의미한 정보로 가공되어, 대한민국 국군의 발전에 큰 기여를 할 수 있을 것입니다.',
        ],
        img: require('@/assets/landing/card3.png'),
        left: true,
      },
      {
        title: '아이템 개요',
        contents: [
          '아미독스는 군 내에서 수기로 시행되는 각종 설문조사를 전산화하여 구현한 웹 사이트입니다.',
          '주 기능은 설문 작성 및 결과를 분석하는 관리자와 설문에 참여하는 사용자에 따라 나뉩니다.',
          '관리자는 승인받은 간부들로 구성되며, 사단 및 대대 등의 규모나 익명성 여부를 지정해 설문을 작성할 수 있습니다. ',
          '등록된 설문은 해당 부대 소속의 사용자들에게 알림을 보내 참여를 유도하고, 관리자는 실시간 설문 참여 현황을 확인할 수 있습니다.',
          '사용자는 관리자에게 승인받은 병사들로 구성되며, 지정 기간 내에 등록된 설문을 제출하거나 수정할 수 있습니다. ',
          '또한 자신이 속한 부대를 대상으로 설문조사를 시행할 수도 있습니다.',
          '관리자와 사용자는 간단한 조작으로 객관식, 서술형 등 다양한 형식의 설문을 작성할 수 있으며, 기존의 설문 파일을 업로드해 지난 설문 이력을 추가할 수도 있습니다. ',
          '완료된 설문에서는 빅데이터 분석을 통해 그래프화된 다양한 통계적 수치를 확인할 수 있으며, 엑셀 등의 형식으로 저장 가능합니다.',
        ],
        img: require('@/assets/landing/card4.png'),
        left: false,
       },
    ]
  })
}
</script>

<style>
.info-box {
  padding-top: 3rem;
  padding-bottom: 6rem;
}
.info-divider {
  margin-top: 1rem;
  margin-bottom: 1rem;
}
</style>