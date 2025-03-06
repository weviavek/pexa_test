import 'dart:async';

import 'package:dio/dio.dart';
import 'package:pexa/common/constants/api_constants.dart';
import 'package:pexa/common/models/api_response.dart';
import 'package:pexa/data/models/model_post.dart';

class PostServices {
  final Dio _dio = Dio();
  Future<ApiResponse<List<ModelPost>>> getPosts() async {
    try {
      final response = await _dio.get(ApiConstants.posts);
      return ApiResponse(
        success: response.statusCode == 200,
        data: List.generate(response.data?.length ?? 0, (index) => ModelPost.fromJson(response.data[index])),
      );
    } on DioException {
      return ApiResponse(success: false, message: 'Dio exception');
    } catch (e) {
      return ApiResponse(success: false);
    }
  }
}
