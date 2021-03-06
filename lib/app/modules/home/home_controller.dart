import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int page = 0;

  @action
  void switchPage(int pageTo) {
    print(pageTo);
    page = pageTo;
  }
}
