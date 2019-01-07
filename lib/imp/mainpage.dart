import 'package:flutter/material.dart';
import 'package:mvp/base_page_presenter.dart';
import 'package:mvp/base_page_state.dart';
import 'package:mvp/base_route.dart';

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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("MainPageState"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
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

class MainPagePresenter extends BasePageStatePresenter<MainPageState> {
  @override
  void initState() {
    super.initState();
    view.a();
  }

  void b() {
    print("bbbb");
  }
}
