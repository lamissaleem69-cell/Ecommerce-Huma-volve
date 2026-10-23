import 'package:ecommerce_app_huma_volve/core/constant/api_endpoints.dart';
import 'package:ecommerce_app_huma_volve/core/network/api_client.dart';
import 'package:ecommerce_app_huma_volve/features/auth/login/screens/model/login_model.dart';

class LoginServic {
  ApiClient apiClient;
  LoginServic(this.apiClient);
  Future<LoginModel> login({
    required String email,
    required String password,
  }) async {
    final response = await apiClient.dio.post(
      ApiEndpoints.loginEndpoint,
      data: {"email": email, "password": password},
    );
    final Map<String,dynamic> date = response.data;
   final modelData= LoginModel.fromJson(date);
   
   return modelData;
    
  }
}
