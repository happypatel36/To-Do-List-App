class Todo {
  String? id;
  String? todotext;
  bool isDone;

  Todo({required this.id, required this.todotext, this.isDone = false});

  static List<Todo> todoList() {
    return [
      Todo(id: '01', todotext: 'good morning', isDone: true),
      Todo(id: '02', todotext: 'today metting', isDone: true),
      Todo(
        id: '03',
        todotext: 'week schadule',
      ),
      Todo(
        id: '04',
        todotext: 'project deteils',
      ),
      Todo(
        id: '05',
        todotext: 'assignment submit',
      )
    ];
  }
}
