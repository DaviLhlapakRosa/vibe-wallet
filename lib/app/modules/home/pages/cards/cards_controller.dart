import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:vibewallet/app/shared/models/vibe_card.dart';

part 'cards_controller.g.dart';

class CardsController = _CardsControllerBase with _$CardsController;

abstract class _CardsControllerBase with Store {
  @observable
  ObservableList<VibeCard> cards = [
    VibeCard("Visa",Colors.green),
    VibeCard("MasterCard",Colors.red)
  ].asObservable();

}
