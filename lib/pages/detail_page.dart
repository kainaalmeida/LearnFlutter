import 'package:flutter/material.dart';
import 'package:splashscreen_login/models/post_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PostModel post = ModalRoute.of(context)!.settings.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(post.id.toString()),
      ),
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.title),
            const SizedBox(height: 15),
            Text(post.body),
          ],
        ),
      ),
    );
  }
}
