import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vibewallet/app/modules/home/pages/start/start_controller.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:vibewallet/app/shared/models/charts_data.dart';

class StartPage extends StatefulWidget {
  final String title;

  const StartPage({Key key, this.title = "Start"}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartController> {
  List<charts.Series> investList = [
    new charts.Series<ChartsData, int>(
      id: 'Invest',
      domainFn: (ChartsData data, _) => data.id,
      measureFn: (ChartsData data, _) => data.value,
      data: [
        new ChartsData(0,60),
        new ChartsData(1,40),
      ],
    )
  ];

  List<charts.Series> debitList = [
    new charts.Series<ChartsData, int>(
      id: 'Debit',
      domainFn: (ChartsData data, _) => data.id,
      measureFn: (ChartsData data, _) => data.value,
      data: [
        new ChartsData(0,40),
        new ChartsData(1,60),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Seu Saldo é de ${controller.getSaldo()}",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 25.0),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    height: 180,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "Investimentos",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Text(
                          controller.getInvest(),
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Expanded(
                          child: charts.PieChart(
                            investList,
                            animate: false,
                            defaultRenderer: new charts.ArcRendererConfig(arcWidth: 10)
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    height: 180,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "Gastos",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Text(
                          controller.getDebit(),
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Expanded(
                          child: charts.PieChart(
                              debitList,
                              animate: false,
                              defaultRenderer: new charts.ArcRendererConfig(arcWidth: 10)
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                "Últimas Compras",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(122, 50, 175, 0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading: Icon(Icons.add_shopping_cart,color: Colors.white,size: 30,),
                      title: Text("Compra Online",style: TextStyle(color: Colors.white),),
                      subtitle: Row(
                        children: <Widget>[
                          Text("Total R\$45,00",style: TextStyle(color: Colors.red)),
                          Text(" - ",style: TextStyle(color: Colors.white)),
                          Text("Investido R\$5,00",style: TextStyle(color: Colors.green)),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_drop_down,color: Colors.red,size: 40,),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(122, 50, 175, 0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading: Icon(Icons.insert_drive_file,color: Colors.white,size: 30,),
                      title: Text("Pagamento de Boleto",style: TextStyle(color: Colors.white),),
                      subtitle: Row(
                        children: <Widget>[
                          Text("Total R\$380,00",style: TextStyle(color: Colors.red)),
                          Text(" - ",style: TextStyle(color: Colors.white)),
                          Text("Investido R\$20,00",style: TextStyle(color: Colors.green)),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_drop_down,color: Colors.red,size: 40,),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(122, 50, 175, 0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading: Icon(Icons.account_balance,color: Colors.white,size: 30,),
                      title: Text("Depósito Bancário",style: TextStyle(color: Colors.white),),
                      subtitle: Row(
                        children: <Widget>[
                          Text("Valor R\$45,00",style: TextStyle(color: Colors.green)),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_drop_up,color: Colors.green,size: 40,),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(122, 50, 175, 0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading: Icon(Icons.credit_card,color: Colors.white,size: 30,),
                      title: Text("Ifood",style: TextStyle(color: Colors.white),),
                      subtitle: Row(
                        children: <Widget>[
                          Text("Total R\$85,00",style: TextStyle(color: Colors.red)),
                          Text(" - ",style: TextStyle(color: Colors.white)),
                          Text("Investido R\$15,00",style: TextStyle(color: Colors.green)),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_drop_down,color: Colors.red,size: 40,),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(122, 50, 175, 0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading: Icon(Icons.add_shopping_cart,color: Colors.white,size: 30,),
                      title: Text("Compra Online",style: TextStyle(color: Colors.white),),
                      subtitle: Row(
                        children: <Widget>[
                          Text("Total R\$45,00",style: TextStyle(color: Colors.red)),
                          Text(" - ",style: TextStyle(color: Colors.white)),
                          Text("Investido R\$5,00",style: TextStyle(color: Colors.green)),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_drop_down,color: Colors.red,size: 40,),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
