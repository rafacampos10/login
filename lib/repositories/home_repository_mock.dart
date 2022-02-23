import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:login/models/post_model.dart';
import 'package:login/repositories/home_reposiroy.dart';

class HomeRepositoryMock implements HomeRepository{
  @override
  Future<List<PostModel>> getList() async{
   var value = await rootBundle.loadString("assets/data.json");
   List postJson = jsonDecode(value);
   return postJson.map((e) => PostModel.fromJson(e)).toList();
  }

}