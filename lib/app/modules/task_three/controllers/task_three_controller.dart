import 'package:get/get.dart';
import 'package:pexa/data/models/model_post.dart';
import 'package:pexa/data/repositories/post_repository.dart';

class TaskThreeController extends GetxController {
  List<ModelPost>? posts;
  PostRepository? _postRepository;
  bool? isPostLoading;
  bool? hasError;

  @override
  void onInit() {
    _postRepository ??= PostRepository();
    getPosts();
    super.onInit();
  }

  void getPosts() {
    isPostLoading = true;
    update();
    _postRepository!.getPost().then((response) {
      isPostLoading = false;
      response.success != true ? hasError = true : posts = response.data;
      update();
    });
  }
}
