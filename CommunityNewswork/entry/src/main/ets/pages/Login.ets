import promptAction from '@ohos.promptAction'
import router from '@ohos.router'

@Entry
@Component
struct Index {
  @State name: string = ''
  @State passwd: string = ''

  onPageShow() {
  }

  build() {
    Row() {
      Column() {
        // Image($r('app.media.header'))
        //   .height(150)
        //   .width(150)
        //   .margin({top:30,bottom:20})
        Text("欢迎登录")
          .fontSize(20)
          .fontColor("#696969")
          .margin({ top: 40 })

        TextInput({ placeholder: "账号" })
          .width(300)
          .height(50)
          .margin(20)
          .borderRadius(0)
          .onChange((val: string) => {
            this.name = val;
          })
          .type(InputType.Normal)

        TextInput({ placeholder: "密码" })
          .width(300)
          .height(50)
          .margin(20)
          .borderRadius(0)
          .onChange((val: string) => {
            this.passwd = val;
          })
          .type(InputType.Password)

        Text('还没有账号？去注册')
          .fontSize(18)
          .fontColor('#1296db')
          .decoration({ type: TextDecorationType.Underline, color: ('#1296db') })
          .textAlign(TextAlign.Start)
          .onClick((e) => {
            router.replaceUrl({
              url: 'pages/Regist' // 目标url
            }, router.RouterMode.Standard, (err) => {
              if (err) {
                console.error(`Invoke replaceUrl failed, code is ${err.code}, message is ${err.message}`);
                return;
              }
              console.info('Invoke replaceUrl succeeded.');
            })
          })

        Button('登录', { type: ButtonType.Capsule })
          .backgroundColor('#1296db')
          .width(300)
          .height(48)
          .fontSize(20)
          .margin(30)
          .onClick((e) => {
            if (this.name && this.passwd) {
              if (this.name=='15881433239'&&this.passwd=="1234567"){
                globalThis.user = '1'
                router.replaceUrl({
                  url: 'pages/Index' // 目标url
                }, router.RouterMode.Standard, (err) => {
                })
              }else {
                promptAction.showToast({
                  message: "账户或密码错误"
                })
              }
            } else {
              promptAction.showToast({
                message: "请输入用户名或密码"
              })
            }
          })
          .borderRadius(30)
      }.width('100%')

    }

    .width('100%').padding(16)
  }
}
