import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final String baseurl = "https://www.googleapis.com/books/v1/";

  ApiService(this._dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("$baseurl$endPoint");
    return response.data;
  }
}
