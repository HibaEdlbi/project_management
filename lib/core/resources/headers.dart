import 'package:dio/dio.dart';
import 'package:project_management/core/config/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

getHeader(bool useToken) {
  if (useToken) {
    return Options(headers: {
      'Authorization': '${storage.get<SharedPreferences>().getString(
            'token',
          )}',
      "contentType": "application/json",
      "X-Requested-With": "accept: */*"
    });
  } else {
    return Options(headers: {
      "contentType": "application/json",
    }, );
  }
}
