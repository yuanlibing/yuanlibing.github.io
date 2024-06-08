import { Network } from './Networks'
import { Service } from './Service'
import { ShouYe } from './ShouYe'
@Entry
@Component
struct Index {

  @State curIndex:number = 0
  @Builder buildTabBar(title: string,index: number){//自定义
    Column(){
      Text(title)
        .fontSize(18)
        .fontWeight(500)
        .fontColor(this.curIndex == index ? Color.Black : Color.Grey)//判断点击页所在的位置
      Divider()
        .backgroundColor(this.curIndex == index ? Color.Red : Color.Black)
        .width(20)
        .height(2)
        .opacity(this.curIndex == index ? 1 : 0)
        .margin({top:0})
    }
  }


  build() {
    Row() {
      Column() {//间隙留为10
       Row(){
         Image($r('app.media.topbanner_01'))//头标
           .height(40)
       }.width('100%')
        .justifyContent(FlexAlign.Center)

        Row(){
          Image($r('app.media.shequwang_logo'))//logo
            .height(30)
            .margin({right: 250})
        }.width('100%')
         .justifyContent(FlexAlign.Center)

        Tabs(){
          TabContent(){
            ShouYe()       //导入进来
          }.tabBar(this.buildTabBar('首页',0))
          TabContent(){
            Service()
          }.tabBar(this.buildTabBar('服务中心',1))
          TabContent(){
            Network()
          }.tabBar(this.buildTabBar('新闻网',2))
        }.width('100%')
        .onChange((index:number) => {
          this.curIndex = index
        })

      }
      .width('100%')
    }
    .height('100%')
  }
}