import 'package:rxdart/rxdart.dart';

class CounterService {
  BehaviorSubject _counter = BehaviorSubject.seeded(0);

  Observable get stream$ => _counter.stream;
  int get counter => _counter.value;

  increment() {
    _counter.add(counter + 1);
  }

  decrement() {
    _counter.add(counter - 1);
  }
}
