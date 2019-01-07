import 'package:mvp/i_lifecycle.dart';

abstract class IPresenter extends ILifecycle {}

abstract class IMvpView extends ILifecycle {}

/*

abstract class IPresenter<V extends IMvpView<IPresenter<V>>>
    extends ILifecycle {
  V view;
}

abstract class IMvpView<P extends IPresenter<IMvpView<P>>> extends ILifecycle {
  P presenter;
}
*/
