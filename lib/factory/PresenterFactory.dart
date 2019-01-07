import 'package:mvp/base_page_presenter.dart';
import 'package:mvp/imp/mainpage.dart';

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
