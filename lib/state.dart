import 'package:big_shopping_list/item_data.dart';
import 'package:mobx/mobx.dart';

part 'state.g.dart';

class ListState = _ListState with _$ListState;

abstract class _ListState with Store {
  @observable
  ObservableList<ItemData> list =
      ObservableList.of(List.generate(100000, (index) => ItemData.random()));

  @action
  void add() {
    list.add(ItemData.random());
  }

  @action
  void remove(int index) {
    list.removeAt(index);
  }
}
