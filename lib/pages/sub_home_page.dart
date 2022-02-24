import 'package:flutter/material.dart';
import 'package:login/models/post_model.dart';



class SubHomePage extends StatelessWidget {
  const SubHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(args.title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
            ),
            SizedBox(height: 24),
            Text(
              args.body,
              style: TextStyle(
                fontSize: 16,

              ),
            ),
            SizedBox(height: 24),
            Text(
              "Noticia: ${args.id}, Autor: ${args.userId}",
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
