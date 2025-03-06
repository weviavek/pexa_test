import 'package:pexa/common/models/api_response.dart';
import 'package:pexa/data/models/model_post.dart';
import 'package:pexa/data/services/post_services.dart';

class PostRepository {
  final _api = PostServices();
  Future<ApiResponse<List<ModelPost>>> getPost() => _api.getPosts();
}
