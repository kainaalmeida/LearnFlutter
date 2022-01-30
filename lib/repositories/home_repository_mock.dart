import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:splashscreen_login/models/post_model.dart';
import 'package:splashscreen_login/repositories/home_repository.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<List<PostModel>> getPosts() async {
    var value = await rootBundle.loadString("assets/data.json");
    List postJson = jsonDecode(value);
    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}
