
abstract class ToDoList {
  String infomyList();
  void remove(String task);
  void addTasks(String task);
}

class MyList implements ToDoList {
  List<String> tasks = [];

  MyList(this.tasks);

  @override
  String infomyList() {
    if (tasks.isEmpty) {
      return 'Список задач пуст.';
    } else {
      return 'Список задач:$tasks';
    }
  }

  @override
  void remove(String task) {
    tasks.remove(task);
  }

  @override
  void addTasks(String task) {
    tasks.add(task);
  }
}

void main() {
  var toDoList = MyList([]);

  toDoList.addTasks('Купить продукты');
  toDoList.addTasks('Подготовить уроки');
  toDoList.addTasks('Сделать зарядку');

  print(toDoList.infomyList());

  toDoList.remove('Подготовить уроки');

  print(toDoList.infomyList());
}