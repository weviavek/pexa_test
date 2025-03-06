import 'package:dio/dio.dart';

class ApiResponse<T> {
  final bool? success;
  final T? data;
  final String? message;
  ApiResponse({this.data, this.success, this.message});

  static ApiResponse<T> getResponse<T>(Response response, T Function(Map<String, dynamic>) fromJson) {
    final statusCode = response.statusCode;
    final data = fromJson(response.data);

    return statusCode == 200 ? ApiResponse<T>(success: true, data: data) : ApiResponse<T>(success: false);
  }
}
