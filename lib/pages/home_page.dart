import 'package:flutter/material.dart';
import 'package:login/controllers/home_controller.dart';
import 'package:login/models/post_model.dart';
import 'package:login/repositories/home_repository_imp.dart';
import 'package:login/services/prefs_service.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final HomeController _controller = HomeController(HomeRepositoryImp());

  void initState(){
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            PrefsService.logout();
            Navigator.of(context)
                .pushNamedAndRemoveUntil("/login", (_) => true);
          },
              icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_,list,__){
            return ListView.separated(
              itemCount: list.length,
              itemBuilder: (_,idx) => ListTile(
                leading: Text(list[idx].id.toString()),
                title: Text(list[idx].title),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => Navigator.of(context)
                    .pushNamed(
                  "/sub",
                  arguments:list[idx],
                ),
            ),
              separatorBuilder: (_,__) =>Divider(),
            );

          },
      ),
    );
  }
}
