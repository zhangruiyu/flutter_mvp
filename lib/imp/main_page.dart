import 'package:flutter/material.dart';
import 'package:flutter_mvp/base/base_page_state.dart';
import 'package:flutter_mvp/base/base_route.dart';
import 'package:flutter_mvp/imp/main_page_presenter.dart';

class MainPage extends BasePageRoute {
  @override
  MainPageState createState() => MainPageState();

  @override
  String getRouteName() {
    return "MainPage";
  }
}

class MainPageState extends BasePageState<MainPage, MainPagePresenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MainPageState"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'A',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void a() {
    print("aaaa");
    presenter.b();
  }
}
