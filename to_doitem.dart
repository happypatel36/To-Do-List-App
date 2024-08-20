import 'package:flutter/material.dart';
import '../model/todo.dart';

class ToDoitem extends StatelessWidget {
  final Todo todo;
  final ontodochanged;
  final ondelete;

  const ToDoitem(
      {super.key,
      required this.todo,
      required this.ontodochanged,
      required this.ondelete});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            ontodochanged(todo);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: Colors.blue,
          ),
          title: Text(
            todo.todotext!,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            child: IconButton(
              color: Colors.white,
              iconSize: 15,
              icon: Icon(Icons.delete_outline),
              onPressed: () {
                ondelete(todo.id);
              },
            ),
          ),
        ));
  }
}
