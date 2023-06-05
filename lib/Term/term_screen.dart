import 'package:flutter/material.dart';
import 'package:ohaomob/Signup/SignupOptionScreen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermScreen extends StatelessWidget {
  const TermScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // print the loading progress to the console
            // you can use this value to show a progress bar if you want
            debugPrint("Loading: $progress%");
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse("https://term.ozzao.com/"));
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.clear_all))
            ],
            pinned: true,
            expandedHeight: 100.0,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Notification'),
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: double.infinity,
              // the most important part of this example
              child: WebViewWidget(
                controller: _controller,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SignupOptionScreen()));
            },
            minWidth: MediaQuery.of(context).size.width - 200,
            height: 50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Colors.red,
            child: Text('Accept'),
          ),
        ],
      ),
    );
  }
}
