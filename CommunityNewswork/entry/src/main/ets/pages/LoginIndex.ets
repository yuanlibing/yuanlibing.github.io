import { RouterOptions } from '@system.router'
import router from '@ohos.router'
@Entry
@Component
struct LoginIndex {

  private option:router.RouterOptions={
    url:'pages/Index'
  }
  build(){
    Row(){
      Column(){
        Row(){
          Button('登录')
            .margin({top:400})
            .width('100')
            .onClick(()=>{
              router.pushUrl({
                url: 'pages/Login', // 目标url
              })
            })

        }
        .backgroundImage($r('app.media.huanyingye'))
        .backgroundImageSize(1)
        .width('100%')
        .height('100%')
        .justifyContent(FlexAlign.Center)
      }
      .width('100%')
    }
    .height('100%')
  }
}