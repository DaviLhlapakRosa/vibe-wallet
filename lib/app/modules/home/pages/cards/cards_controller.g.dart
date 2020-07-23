// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardsController on _CardsControllerBase, Store {
  final _$cardsAtom = Atom(name: '_CardsControllerBase.cards');

  @override
  ObservableList<VibeCard> get cards {
    _$cardsAtom.reportRead();
    return super.cards;
  }

  @override
  set cards(ObservableList<VibeCard> value) {
    _$cardsAtom.reportWrite(value, super.cards, () {
      super.cards = value;
    });
  }

  @override
  String toString() {
    return '''
cards: ${cards}
    ''';
  }
}
