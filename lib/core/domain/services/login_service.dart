
import 'package:dio/dio.dart';
import 'package:project_management/core/config/get_it.dart';
import 'package:project_management/core/domain/models/login_model.dart';
import 'package:project_management/core/domain/models/signup_model.dart';
import 'package:project_management/core/resources/headers.dart';
import 'package:project_management/core/resources/url.dart';
import 'package:shared_preferences/shared_preferences.dart';


abstract class LogInService extends BaseUrl {

  loginData(LogInModel login);
}

class LogInServiceImpl extends LogInService {
  @override
  loginData(LogInModel login) async {
    try {
      print(login.toJson());
      Response response = await dio.post('$baseUrl/auth/authenticate',
          data: login.toJson(), options: getHeader(false));
      if (response.statusCode == 200) {
        print(response.data);
         storage
            .get<SharedPreferences>()
            .setString('token', response.data["token"]);
        return true;
      } else {
        return "false";
      }
    } catch (e) {
      print("object");
      throw e;
    }
    
  }
}
