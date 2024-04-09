import 'dart:convert';

import 'package:ecell_app/controllers/constants.dart';
import 'package:ecell_app/models/models.dart';
import 'package:ecell_app/models/user/user_model.dart';
import 'package:http/http.dart' as http;
// import 'package:http/http.dart';

part 'functions/_create_impl.dart';
part 'functions/_login_impl.dart';

class UserController {
  static String? user_token;
  static UserModel? currentUser;
  static const String signUpRoute = '/signup';
  static const String loginRoute = '/login';
  static const String dashboardRoute = '/dashboard';
  static const String fetchProfileRoute = '/fetchprofile';
  static const String editProfileRoute = '/editprofile';
  static const String forgotPasswordRoute = '/forgotpwd';
  static const String verifyOtpResetPasswordRoute = '/verifyotpresetpwd';
  static const String deleteAccountRoute = '/deleteaccount';
  static const String changePasswordRoute = '/changingpwd';
  static const String getPublicProfileRoute = '/publicprofile/:authoruniqueid';

  const UserController._();

  static Future<http.Response> create({required UserModel user}) async {
    return await _createImpl(user: user);
  }

  static Future<http.Response> login({required UserModel user}) async {
    return await _loginImpl(user: user);
  }
}
