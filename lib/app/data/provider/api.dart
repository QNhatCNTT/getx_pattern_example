// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class MyApiClient extends GetConnect{

  Future<dynamic> getAll() async {
    try {
      final response = await get(baseUrl);
      if(response.statusCode == 200){
        return response.body;
      }else{
        if (kDebugMode) {
          print(response.statusText);
        }
        return null;
      }
      
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<dynamic> getId(id) async{
    try {
      final response = await get('baseUrl$id');
      if(response.statusCode == 200){
        return response.body;
      }else{
        if (kDebugMode) {
          print(response.statusText);
        }
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
