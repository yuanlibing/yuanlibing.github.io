import web_webview from '@ohos.web.webview'
import router from '@ohos.router';

@Entry
@Component
struct WebComponent {
  controller: web_webview.WebviewController = new web_webview.WebviewController();
  @State url: string = ''

  onPageShow() {
    const params = router.getParams();
    if (params) {
      let u = params['url']
      this.controller.loadUrl(u)
    }
  }

  build() {
    Column() {
      Web({ src: this.url, controller: this.controller })
    }
  }
}