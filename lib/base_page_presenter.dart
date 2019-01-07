import 'package:flutter_mvp/mvps.dart';

class BasePageStatePresenter<V extends IMvpView> extends IPresenter {
  V view;
  @override
  void initState() {}

  @override
  void didChangeDependencies() {}

  @override
  void didUpdateWidgets<W>(W oldWidget) {}

  @override
  void deactivate() {}

  @override
  void dispose() {}
}
