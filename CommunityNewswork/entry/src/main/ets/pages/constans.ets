import router from '@ohos.router'
export class CommonConstants {
  static jump(url: string = '') {
    if (!globalThis.user) {
      router.replaceUrl({
        url: 'pages/LoginIndex', // 目标url
      })
      return
    }
    router.pushUrl({
      url: 'pages/Web', // 目标url
      params: {
        url: url,
      }
    })
  }
}