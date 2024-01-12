import 'package:dio/dio.dart';

class NetworkCaller{

  static Future<List<dynamic>> getRequest() async {
    Response response = await Dio().get(
      'https://jsonplaceholder.typicode.com/posts',
    );
    return response.data;
  }

  static Future<List<dynamic>> postRequest(String title, String body) async {
    Response response = await Dio().post(
      'https://jsonplaceholder.typicode.com/posts',
      data: {"title": title, "body": body}
    );
    return response.data;
  }
}