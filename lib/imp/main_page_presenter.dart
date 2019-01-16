import 'package:flutter_mvp/base/base_page_presenter.dart';
import 'package:flutter_mvp/imp/main_page.dart';

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
