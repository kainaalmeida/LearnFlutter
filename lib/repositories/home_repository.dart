import 'package:splashscreen_login/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getPosts();
}
