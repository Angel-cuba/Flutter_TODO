class Todo {
  String? id;
  String? title;
  bool isDone;

  Todo({
    required this.id,
    required this.title,
    this.isDone = false,
  });

  static List<Todo> todoList() {
    return [
      Todo(
        id: '1',
        title: 'Kill the dragon',
        isDone: true,
      ),
      Todo(
        id: '2',
        title: 'Buy milk',
        isDone: true,
      ),
      Todo(
        id: '3',
        title: 'Feed the cat',
        isDone: true,
      ),
      Todo(
        id: '4',
        title: 'Dance with friends',
      ),
      Todo(
        id: '5',
        title: 'Go to library',
        isDone: true,
      ),
      Todo(
        id: '6',
        title: 'Drink coffee',
      ),
    ];
  }
}
