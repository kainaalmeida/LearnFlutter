import 'package:flutter/cupertino.dart';
import 'package:splashscreen_login/models/post_model.dart';
import 'package:splashscreen_login/repositories/home_repository.dart';

class HomeController {
  final HomeRepository _repository;

  HomeController(this._repository);

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async {
    posts.value = await _repository.getPosts();
  }
}
