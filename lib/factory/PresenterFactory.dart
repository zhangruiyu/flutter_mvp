import 'package:flutter_mvp/base_page_presenter.dart';
import 'package:flutter_mvp/imp/mainpage.dart';

class PresenterFactory {
  static BasePageStatePresenter generateOBJ<V>() {
    if (1 == 0) {
      return null;
    } else if (V.toString() == "MainPagePresenter") {
      return MainPagePresenter();
    } else {
      return null;
    }
  }
}
