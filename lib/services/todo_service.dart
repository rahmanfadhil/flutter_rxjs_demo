import 'package:rxdart/rxdart.dart';

class TodoService {
  BehaviorSubject<List<String>> _todos = BehaviorSubject.seeded([]);

  Observable get stream$ => _todos.stream;
  List<String> get todos => _todos.value;

  addTodo(String data) {
    final List<String> newTodo = todos;
    newTodo.add(data);
    _todos.add(newTodo);
  }
}
