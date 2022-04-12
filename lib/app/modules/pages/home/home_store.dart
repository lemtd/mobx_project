import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  int timeToJob = 25;

  @observable
  int timeToRest = 5;

  @action
  void incrementTimeToJob() {
    timeToJob++;
  }

  @action
  void decrementTimeToJob() {
    timeToJob--;
  }

  @action
  void incrementTimeToRest() {
    timeToRest++;
  }

  @action
  void decrementTimeToRest() {
    timeToRest--;
  }
}
