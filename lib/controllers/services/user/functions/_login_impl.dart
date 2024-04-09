part of '../user_controller.dart';

Future<http.Response> _loginImpl({required UserModel user}) async {
  final data = user.toJson();
  final headers = {
    'Content-type': 'application/json',
  };
  final res = await http.post(
    Uri.parse(baseUrl + UserController.loginRoute),
    headers: headers,
    body: jsonEncode(data),
  );
  return res;
}
