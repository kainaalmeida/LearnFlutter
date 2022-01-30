import 'package:dio/dio.dart';
import 'package:splashscreen_login/models/post_model.dart';
import 'package:splashscreen_login/repositories/home_repository.dart';

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<List<PostModel>> getPosts() async {
    try {
      var response =
          await Dio().get("https://jsonplaceholder.typicode.com/posts");

      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    return [];
  }
}
