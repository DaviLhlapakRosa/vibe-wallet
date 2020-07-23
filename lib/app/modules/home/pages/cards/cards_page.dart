import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vibewallet/app/modules/home/pages/cards/cards_controller.dart';

class CardsPage extends StatefulWidget {
  final String title;
  const CardsPage({Key key, this.title = "Cards"}) : super(key: key);

  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends ModularState<CardsPage,CardsController> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark
      ),
      child: Observer(
        builder: (_){
          return ListView.builder(
              itemBuilder: newCard,
              itemCount: controller.cards.length,
          );
        },
      ),
    );
  }

  Widget newCard(BuildContext context, int index){
    return Container(
      decoration: BoxDecoration(
        color: controller.cards[index].color,
        borderRadius: BorderRadius.circular(10)
      ),
      width: MediaQuery.of(context).size.width,
      height: 200,
      margin: EdgeInsets.all(10.0),
      alignment: Alignment.center,
      child: Text(controller.cards[index].nome),
    );
  }
}
