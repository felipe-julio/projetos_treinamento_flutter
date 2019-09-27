import 'package:cursos/models/course.model.dart';
import 'package:cursos/repositories/course.repository.dart';
import 'package:cursos/widgets/connection-manager.widget.dart';
import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  final repository = new CourseRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cursos"),
      ),
      body: ConnectionManager(
        future: repository.get(),
        func: showCourses,
      ),
    );
  }

  Widget showCourses(BuildContext context, AsyncSnapshot snapshot) {
    List<Course> courses = snapshot.data;

    return ListView.builder(
      itemCount: courses.length,
      itemBuilder: (
        BuildContext ctx,
        int index,
      ) {
        return Text(
          courses[index].title,
          style: TextStyle(
            fontSize: 20,
          ),
        );
      },
    );
  }
}
