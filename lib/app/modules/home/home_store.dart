import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  int timeToJob = 25;

  @observable
  int timeToRest = 5;

  void incrementTimeToJob() {
    timeToJob++;
    print(timeToJob);
  }

  void decrementTimeToJob() {
    timeToJob--;
    print(timeToJob);
  }
  
  void incrementTimeToRest() {
    timeToJob++;
  }

  void decrementTimeToRest() {
    timeToJob--;
  }
}