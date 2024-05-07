import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:project_management/core/config/get_it.dart';
import 'package:project_management/core/domain/models/signup_model.dart';
import 'package:project_management/core/resources/url.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpService {
  Future<SignUpModel?> registerUser(SignUpModel signupModel) async {
    http.Response response = await http.post(
        Uri.parse('${BaseUrl.baseUrl}/auth/register'),
        body: jsonEncode(signupModel),
        headers: {
          'content-type': 'application/json',
          "X-Requested-With": "accept: */*"
        });
    inspect(response);
    if (response.statusCode != 200) throw Exception(response.body);
    SignUpModel registerModel = SignUpModel.fromJson(
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>);
    print(response.body);
    storage.get<SharedPreferences>().setString('token', response.body);
    print('true');
    print(storage.get<SharedPreferences>().getString('token'));
    return registerModel;
  }
}
