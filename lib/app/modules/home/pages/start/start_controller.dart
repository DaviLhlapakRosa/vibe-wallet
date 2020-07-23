import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

part 'start_controller.g.dart';

class StartController = _StartControllerBase with _$StartController;

abstract class _StartControllerBase with Store {
  @observable
  double saldo = 11202.46;

  @action
  String getInvest(){
    double invest = (this.saldo/100)*60;
    NumberFormat format = new NumberFormat("R\$ #,##0.00","pt_Br");

    return format.format(invest);
  }

  @action
  String getDebit(){
    double invest = (this.saldo/100)*40;
    NumberFormat format = new NumberFormat("R\$ #,##0.00","pt_Br");

    return format.format(invest);
  }

  @action
  String getSaldo(){
    NumberFormat format = new NumberFormat("R\$ #,##0.00","pt_Br");

    return format.format(saldo);
  }
}
