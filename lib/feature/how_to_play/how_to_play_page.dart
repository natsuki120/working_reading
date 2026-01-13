import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/i18n/strings.dart';

class HowToPlayPage extends StatelessWidget {
  const HowToPlayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebViewWidget(
        controller: WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(backgroundColor)
          ..setNavigationDelegate(
            NavigationDelegate(
              onProgress: (int progress) {
                // Update loading bar.
              },
              onPageStarted: (String url) {},
              onPageFinished: (String url) {},
              onWebResourceError: (WebResourceError error) {},
              onNavigationRequest: (NavigationRequest request) {
                return NavigationDecision.navigate;
              },
            ),
          )
          ..loadRequest(Uri.parse(howToPlayUrl)),
      ),
    );
  }
}
