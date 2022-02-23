import 'package:flutter/material.dart';
import 'package:login/models/post_model.dart';
import 'package:login/repositories/home_reposiroy.dart';

class HomeController{
  final HomeRepository _homeRepository;
  HomeController(this._homeRepository);

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async{
    posts.value = await _homeRepository.getList();
  }
}