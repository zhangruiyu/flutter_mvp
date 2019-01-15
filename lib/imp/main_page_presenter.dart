import 'package:flutter_mvp/base_page_presenter.dart';
import 'package:flutter_mvp/imp/mainpage.dart';

class MainPagePresenter extends BasePagePresenter<MainPageState> {
  @override
  void initState() {
    super.initState();
    view.a();
  }

  void b() {
    print("bbbb");
  }
}
