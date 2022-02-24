import 'package:dio/dio.dart';
import 'package:login/models/post_model.dart';
import 'package:login/repositories/home_reposiroy.dart';

class HomeRepositoryImp implements HomeRepository{
  @override
  Future<List<PostModel>> getList() async {
    try {
      var response =
      await Dio().get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }
    return[];
  }

}