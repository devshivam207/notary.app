import 'package:dio/dio.dart';
import 'package:stocklive/models/model.dart';
import 'package:get_storage/get_storage.dart';

class MyController {
  final dio = Dio();
  final url = 'https://notaryapp-staging.herokuapp.com/customer/login';
  final data = {'email': 'demo@thenotary.app'};
  late final response;
  Future<Welcome> getdata() async {
    response = await dio.post(url, data: data);
    //final responseData = response.data;
    //print(responseData);
    return Welcome.fromJson(response.data);
  }
}
