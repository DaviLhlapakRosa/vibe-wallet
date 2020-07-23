import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vibewallet/app/shared/widgets/button/button_widget.dart';

class PaymentPage extends StatefulWidget {
  final String title;
  const PaymentPage({Key key, this.title = "Payment"}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          ButtonWidget(
            color: Theme.of(context).accentColor,
            text: "Novo Pagamento",
            onClick: (){
              
            },
          ),
          ButtonWidget(
            color: Theme.of(context).accentColor,
            text: "Transferir Dinheiro",
            onClick: (){

            },
          ),
          SizedBox(
            height: 15,
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
