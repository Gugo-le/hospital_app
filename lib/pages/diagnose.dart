import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../helpers/appcolors.dart';

class DiagnosePage extends StatefulWidget {
  @override
  State<DiagnosePage> createState() => _DiagnosePageState();
}

class _DiagnosePageState extends State<DiagnosePage> {
  final String url = 'https://jazzy-lolly-6fea76.netlify.app/';
  late WebViewController _webViewController;
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.MAIN_COLOR),
          onPressed: () {
            if (_webViewController != null) {
              _webViewController.goBack();
            }
          },
        ),
        title: const Text(
          '감기 진단',
          style: TextStyle(
            fontFamily: "DoHyeon",
            fontSize: 15.0,
            color: Color(0xFF545D68),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: url,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) {
              _webViewController = controller;
            },
            onPageFinished: (url) {
              setState(() {
                _isLoading = false;
              });
            },
          ),
          if (_isLoading)
            const Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
