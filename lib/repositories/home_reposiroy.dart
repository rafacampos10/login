import 'package:login/models/post_model.dart';

abstract class HomeRepository{
  Future<List<PostModel>> getList();
}