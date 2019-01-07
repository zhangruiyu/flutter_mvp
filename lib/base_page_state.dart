import 'package:flutter/material.dart';
import 'package:mvp/base_page_presenter.dart';
import 'package:mvp/factory/PresenterFactory.dart';
import 'package:mvp/mvps.dart';

class BasePageState<T extends StatefulWidget, V extends BasePageStatePresenter>
    extends State<T> implements IMvpView {
  V presenter;

  BasePageState() {
    presenter = createPresenter();
    presenter.view = this;
  }

  V createPresenter() {
    return PresenterFactory.generateOBJ<V>();
  }

  @override
  void initState() {
    super.initState();
    presenter.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    presenter.didChangeDependencies();
  }

  @override
  void didUpdateWidget(T oldWidget) {
    super.didUpdateWidget(oldWidget);
    didUpdateWidgets<T>(oldWidget);
  }

  @override
  void deactivate() {
    super.deactivate();
    presenter.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
    presenter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void didUpdateWidgets<W>(W oldWidget) {
    presenter.didUpdateWidgets<W>(oldWidget);
  }
}
