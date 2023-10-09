class TodoModel {
  final String todoText;
  final String id;
  final bool isDone;

  TodoModel({
    required this.todoText,
    required this.id,
    this.isDone = false,
  });

  static List<TodoModel> todoList() {
    return [
      TodoModel(id: '01', todoText: 'Morning Excercise', isDone: true ),
      TodoModel(id: '02', todoText: 'Buy Groceries', isDone: true ),
      TodoModel(id: '03', todoText: 'Check Emails', ),
      TodoModel(id: '04', todoText: 'Team Meeting', ),
      TodoModel(id: '05', todoText: 'Work on mobile apps for 2 hour', ),
      TodoModel(id: '06', todoText: 'Dinner with Jenny', ),
       TodoModel(id: '01', todoText: 'Morning Excercise', isDone: true ),
      TodoModel(id: '02', todoText: 'Buy Groceries', isDone: true ),
      TodoModel(id: '03', todoText: 'Check Emails', ),
      TodoModel(id: '04', todoText: 'Team Meeting', ),
      TodoModel(id: '05', todoText: 'Work on mobile apps for 2 hour', ),
      TodoModel(id: '06', todoText: 'Dinner with Jenny', ),
    ];
  }
}
