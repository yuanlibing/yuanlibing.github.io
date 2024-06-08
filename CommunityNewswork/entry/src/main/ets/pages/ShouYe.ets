import router from '@ohos.router'
import { CommonConstants } from './constans'

@Entry
@Component
export struct ShouYe {
  build() {
    Row() {
      Column({ space: 10 }) {

        Swiper() {
          Image($r('app.media.jiemian_01'))
            .height(200).onClick(e => {
            CommonConstants.jump('http://www.cncn.org.cn/content/2024-05/171694850467020.html')
          })
          Image($r('app.media.jiemian_02'))
            .height(200)
            .onClick(e => {
              CommonConstants.jump('http://zt.cncn.org.cn/2024/gjbwgr/')
            })
          Image($r('app.media.jiemian_03'))
            .height(200)
            .onClick(e => {
              CommonConstants.jump('http://zt.cncn.org.cn/2024/gjbwgr/')
            })
        }
        .width('100%')
        .autoPlay(true) //轮播图

        Row() {
          Text()
            .width(4)
            .height(30)
            .backgroundColor(Color.Red)

          Text('服务至上，从我做起')
            .fontSize(20)
            .fontWeight(800)
            .margin({ left: 20 })
        }.width('100%')
        .justifyContent(FlexAlign.Start)
        .alignItems(VerticalAlign.Center) //垂直放下去进行集中
        .margin({ top: 2})

        Row() {
          Image($r('app.media.topbanner'))
        }.width('100%')
        .height('50')
        .margin({ top:2 })

        Row() {
          Image($r('app.media.ShouYe_04'))
            .width(180)
          Column() {
            Text('@社区居民，疫情防控需要你').width('100%').fontColor(Color.Black).fontSize(15)
            Text('2023/2/1').margin({ top: 55 }).width('100%').fontColor(Color.Gray)
          }.margin({ left: 10, right: 10 })
        }.width('100%')
        .onClick(e => {
          CommonConstants.jump('http://www.cncn.org.cn/origin/2022-03-23/63381.html')
        })
        .margin({ top: 2 })

        Row() {
          Image($r('app.media.ShouYe_01'))
            .width(180)
          .margin({top:-10})
          Column() {
            Text('假如社区也“双减”，那你做梦也会笑出声吧也许社区“双减”不会那么快实现，但“忙里偷闲”“苦中作乐”的心情要好好保持呀。毕竟在社区朝朝暮暮，造温暖长长久久。')
              .width('100%')
              .fontColor(Color.Black)
              .fontSize(15)
            Text('2023/2/10').margin({ top: 10 }).width('100%').fontColor(Color.Gray)
          }.margin({ left: 10, right: 10 })
        }.width('100%')
        .onClick(e => {
          CommonConstants.jump('http://www.cncn.org.cn/origin/2021-11-30/62607.html')
        })
        .margin({ top: 2 })

        Row() {
          Image($r('app.media.ShouYe_02'))
            .onClick(e => {
              CommonConstants.jump('https://mp.weixin.qq.com/s/T7hi1uNh9MzgXnXsowH8zQ')
            })
            .width(180)
          Column() {
            Text('追本溯源，真理的味道有多甜！在中国，有这样一本书，它遍藏人间真理，也蕴含甘“甜”滋味~')
              .width('100%')
              .fontColor(Color.Black)
              .fontSize(15)
            Text('2024/3/4').margin({ top: 55 }).width('100%').fontColor(Color.Gray)
          }.margin({ left: 10, right: 10 })
        }.width('100%')
        .margin({ top: 2 })

        Row() {
          Image($r('app.media.ShouYe_03'))
            .width(180)
          Column() {
            Text('从“奋进新时代”主题成就展看新时代政治建设').width('100%')
            Text('2024/5/3').margin({ top: 55 }).width('100%').fontColor(Color.Gray)
          }.margin({ left: 10, right: 10 })
        }.onClick(e => {
          CommonConstants.jump('https://www.chinanews.com.cn/gn/2024/06-04/10228301.shtml')
        })
        .width('100%')
        .margin({ top: 2 })

        List() {

        }
        .width('100%')
        .height('100%')
        .margin({ top: 8 })

      }
      .width('100%')
    }
    .height('100%')
  }
}