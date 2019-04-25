import 'package:rxdart/rxdart.dart';

// class CounterBloc extends InheritedWidget {
//   final Map<String, int> _counter = {'val': 0};

//   int get counter {
//     return _counter['val'];
//   }

//   CounterBloc({Widget child}) : super(child: child);

//   void increment() {
//     _counter['val']++;
//   }

//   void decrement() {
//     _counter['val']--;
//   }

//   @override
//   bool updateShouldNotify(InheritedWidget oldWidget) {
//     return true;
//   }

//   static CounterBloc of(BuildContext context) {
//     return context.inheritFromWidgetOfExactType(CounterBloc);
//   }
// }

class Counter {
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
