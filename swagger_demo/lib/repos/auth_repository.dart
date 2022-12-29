import 'package:chopper/chopper.dart';
import 'package:swagger_demo/generated_code/auth_api.models.swagger.dart';
import 'package:swagger_demo/generated_code/auth_api.swagger.dart' as swagger;

class AuthApiRepository {
  AuthApiRepository(Uri baseUrl)
      : _authApi = swagger.AuthApi.create(baseUrl: baseUrl);

  final swagger.AuthApi _authApi;

  Future<Response?> login({
    required String username,
    required String password,
    String? expiry,
  }) =>
      _authApi.authenticationLoginPost(
        body: LoginRequest(
          username: username,
          password: password,
        ),
      );

  @override
  Future<Response?> logout(String? deviceId) =>
      _authApi.authenticationLogoutPost();
}
