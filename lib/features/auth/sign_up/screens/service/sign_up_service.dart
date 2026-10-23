import 'package:dio/dio.dart';
import 'package:ecommerce_app_huma_volve/core/constant/api_endpoints.dart';
import 'package:ecommerce_app_huma_volve/core/network/api_client.dart';
import 'package:ecommerce_app_huma_volve/features/auth/sign_up/screens/model/signup_req_model.dart';
import 'package:ecommerce_app_huma_volve/features/auth/sign_up/screens/model/signup_res_model.dart';

class SignUpService {
  ApiClient apiClient;
  SignUpService(this.apiClient);
  Future<SignupResModel> signUp(SignupReqModel) async {
    final respone = await apiClient.dio.post(
      ApiEndpoints.signUpEndpoint,
      data:{
  "email":SignupReqModel.email,
  "name": SignupReqModel.name,
  "password": SignupReqModel.password,
  "avatar": "https://static.vecteezy.com/system/resources/previews/005/544/718/non_2x/profile-icon-design-free-vector.jpg"
},
    );
    final  data = respone.data;
    final dataModel = SignupResModel.fromJson(data);
    return dataModel;
  }
}
