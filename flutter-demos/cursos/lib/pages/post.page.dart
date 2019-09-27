import 'package:cursos/models/post.model.dart';
import 'package:cursos/repositories/post.repository.dart';
import 'package:cursos/widgets/connection-manager.widget.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final repository = new PostRepository();
  var tag = "";

  PostPage({@required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConnectionManager(
        future: repository.getByTag(tag),
        func: (ctx, snapshot) {
          Post post = snapshot.data;
          return ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Image.network(
                  post.meta.images.post,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  post.title,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  post.summary,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
