import 'package:flutter/material.dart';
import 'package:login/controllers/home_controller.dart';
import 'package:login/models/post_model.dart';
import 'package:login/repositories/home_repository_mock.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final HomeController _controller = HomeController(HomeRepositoryMock());

  void initState(){
    super.initState();
    _controller.fetch();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_,list,__){
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (_,idx) => ListTile(
                title: Text(list[idx].title),
                subtitle: Text(list[idx].body),
            ),
            );
          },
      ),
    );
  }
}
