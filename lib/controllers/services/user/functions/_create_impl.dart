part of '../user_controller.dart';

Future<http.Response> _createImpl({required UserModel user}) async {
  final data = user.toJson();
  final headers = {
    'Content-type': 'application/json',
  };
  final res = await http.post(
    Uri.parse(baseUrl + UserController.signUpRoute),
    headers: headers,
    body: jsonEncode(data),
  );
  return res;
}
