import { CommonConstants } from './constans'
@Entry
@Component
export struct Network{
  build(){
   Row(){
     Column(){
       Swiper(){
         Image($r('app.media.news_01')).height('220')
           .onClick(e=>{
             CommonConstants.jump('https://www.chinanews.com.cn/gn/2024/06-04/10228336.shtml')
           })
         Image($r('app.media.news_02')).height('220')
           .onClick(e=>{
             CommonConstants.jump('https://www.chinanews.com.cn/gn/2024/06-04/10228301.shtml')
           })
         Image($r('app.media.news_03')).height('220')
           .onClick(e=>{
             CommonConstants.jump('https://www.chinanews.com.cn/gn/2024/06-04/10228301.shtml')
           })
       }.width('100%')
       .autoPlay(true)

       Row(){
         Text()
           .width(400)
           .height(4)
           .backgroundColor(Color.Red)
           .margin({top:0})
       }.width('100%')
       .justifyContent(FlexAlign.Start)
       .alignItems(VerticalAlign.Center) //垂直放下去进行集中
       .margin({ top: 8 })


       Row({space:10}) {
         Column() {
           Text('  1:沈阳：“一对一”服务保障“一老一幼”“一对一”帮帮团让“品质养老”更具人文关怀。').width('100%').fontColor(Color.Black).fontSize(15)
         }
       }.width('100%')
       .onClick(e => {
         CommonConstants.jump('http://www.cncn.org.cn/origin/2022-03-23/63381.html')
       })
       .margin({ top: 8 })

       Row(){
         Image($r('app.media.news_05'))
           .width('90%')
       }

       Row({space:10}) {
         Column() {
           Text('  2:安徽宁国：党建引领聚合力 红色力量助发展').width('100%').fontColor(Color.Black).fontSize(15)
         }
       }.width('100%')
       .onClick(e => {
         CommonConstants.jump('http://www.cncn.org.cn/origin/2022-03-23/63381.html')
       })
       Row(){
         Image($r('app.media.news_06'))
           .width('90%')
       }


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