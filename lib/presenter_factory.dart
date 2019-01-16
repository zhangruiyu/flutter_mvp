import 'package:flutter_mvp/imp/main_page_presenter.dart';

class PresenterFactory {
   static dynamic generateOBJ<T>() { 
    if (1 == 0) {
      return null;
    } else if (T.toString() == "MainPagePresenter") {
      return MainPagePresenter();
    } else {
      return null;
    }
  }
}