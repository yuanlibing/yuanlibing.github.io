import { CommonConstants } from './constans'
@Entry
@Component
export struct Service{
  build(){
    Row(){
      Column(){
        Swiper(){
          Image($r('app.media.service_01'))
            .onClick(e=>{
              CommonConstants.jump('http://www.cncn.org.cn/origin/')
            })
          Image($r('app.media.service_02'))
            .onClick(e=>{
              CommonConstants.jump('http://zt.cncn.org.cn/2022/ershida/')
            })
          Image($r('app.media.service_03'))
            .onClick(e=>{
              CommonConstants.jump('http://zt.cncn.org.cn/2021/100zn/')
            })
          Image($r('app.media.service_04'))
            .onClick(e=>{
              CommonConstants.jump('http://zt.cncn.org.cn/2021/qczsq/')
            })
        }.width('100%')
        .autoPlay(true)//轮播图

        Row(){
          Text()
            .width(400)
            .height(4)
            .backgroundColor(Color.Red)
        }
        .width('100%')
        .justifyContent(FlexAlign.Start)
        .alignItems(VerticalAlign.Center)//垂直放下去进行集中
        .margin({top: 8})

        Row(){
          Text('服务社区欢迎您')
            .fontSize(20)
            .fontWeight(800)
            .margin({left: 20})
        }.margin({top:10})
        Row(){
          Text('  欢迎光临我们的社区！这里，我们用心守护着每一个家庭，致力于为您打造一个温馨、和谐、充满活力的居住环境。随着清晨的第一缕阳光洒满大地，我们的社区也迎来了新的一天。在这里，您会感受到家的温暖，体会到邻里之间的真挚情谊。我们始终秉持着“以人为本，服务至上”的理念，致力于为您提供最贴心、最周到的服务。走进社区，绿树成荫、花香四溢，仿佛置身于一个美丽的花园。我们的工作人员始终面带微笑，热情周到地为您解决各种问题。无论是关于社区设施的使用，还是日常生活中的小困扰，我们都会耐心倾听，尽力为您排忧解难。此外，我们还经常组织丰富多彩的社区活动，如亲子游戏、文艺演出、健康讲座等，让您在忙碌的生活之余，也能享受到轻松愉快的时光。在这里，您可以结识到志同道合的朋友，共同分享生活的喜悦与感动。我们深知，一个优秀的社区不仅仅是硬件设施的完善，更在于软件服务的提升。因此，我们始终致力于提升服务质量，不断创新服务模式，让每一位居民都能感受到我们的关心与温暖。最后，再次欢迎您加入我们的社区大家庭！让我们一起携手，共同打造一个温馨、和谐、美好的家园！')
            .fontSize(18)
            .fontColor(Color.Black)
        }.margin({top:10})

        List(){

        }.width('100%')
        .height('100%')
        .margin({top:8})

      }
      .width('100%')
    }
    .height('100%')
  }
}