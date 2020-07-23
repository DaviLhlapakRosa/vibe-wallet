import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:vibewallet/app/modules/home/pages/cards/cards_page.dart';
import 'package:vibewallet/app/modules/home/pages/payment/payment_page.dart';
import 'package:vibewallet/app/modules/home/pages/start/start_page.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Vibe Wallet"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {

  PageController _pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      backgroundColor: Theme.of(context).primaryColorDark,
      body: Container(
        child: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            StartPage(),
            PaymentPage(),
            CardsPage(),
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: _pageController,
        builder: (__, _){
          return BottomNavigationBar(
            onTap: (index){
              _pageController.jumpToPage(index);
            },
            backgroundColor: Theme.of(context).primaryColorDark,
            selectedItemColor: Theme.of(context).accentColor,
            unselectedItemColor: Theme.of(context).primaryColorLight,
            currentIndex: (_pageController.page == null)?0:_pageController.page.toInt(),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Início"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.attach_money),
                title: Text("Pagamentos",),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.credit_card),
                title: Text("Meus Cartões",),
              ),
            ],
          );
        },
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
        )
      ),
    );
  }

}


