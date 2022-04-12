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
    print("job: $timeToJob");
  }

  @action
  void decrementTimeToJob() {
    timeToJob--;
    print("job: $timeToJob");
  }

  @action
  void incrementTimeToRest() {
    timeToRest++;
    print("rest: $timeToRest");
  }

  @action
  void decrementTimeToRest() {
    timeToRest--;
    print("rest: $timeToRest");
  }
}
