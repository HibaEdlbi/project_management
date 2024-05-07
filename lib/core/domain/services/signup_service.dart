import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_management/core/domain/models/signup_model.dart';

class SignUpService {
  Future<SignUpModel?> registerUser(SignUpModel signupModel) async {
    http.Response response = await http.post(
        Uri.parse('https://projects-management-system.onrender.com/api/v1/auth/register'),
        body: jsonEncode(signupModel),
        headers: {
          'content-type': 'application/json',
        });

    if (response.statusCode != 200) throw Exception(response.body);
    SignUpModel registerModel =
        SignUpModel.fromJson(jsonDecode(utf8.decode(response.bodyBytes))as Map<String, dynamic>);

    return registerModel;
  }
}