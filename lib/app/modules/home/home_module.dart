import 'package:vibewallet/app/modules/home/pages/payment/payment_controller.dart';
import 'package:vibewallet/app/modules/home/pages/start/start_controller.dart';
import 'package:vibewallet/app/modules/home/pages/cards/cards_controller.dart';
import 'package:vibewallet/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vibewallet/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PaymentController()),
        Bind((i) => StartController()),
        Bind((i) => CardsController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
