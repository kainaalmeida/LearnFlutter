import 'package:flutter/material.dart';
import 'package:splashscreen_login/controllers/home_controller.dart';
import 'package:splashscreen_login/models/post_model.dart';
import 'package:splashscreen_login/repositories/home_repository_imp.dart';
import 'package:splashscreen_login/services/prefs_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                PrefsService.logout();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/login', (_) => false);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller.posts,
        builder: (_, list, __) {
          return ListView.separated(
            separatorBuilder: (_, index) => const Divider(),
            itemCount: list.length,
            itemBuilder: (_, index) {
              return ListTile(
                leading: const Icon(Icons.open_in_browser),
                title: Text(list[index].title),
                trailing: Text(
                  list[index].id.toString(),
                ),
                onTap: () => Navigator.of(context)
                    .pushNamed('/detail', arguments: list[index]),
              );
            },
          );
        },
      ),
    );
  }
}
