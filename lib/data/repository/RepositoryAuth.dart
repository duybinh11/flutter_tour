
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Repositoryauth {
  final Dio dio;
  final SharedPreferences sharedPreferences;

  Repositoryauth({required this.dio, required this.sharedPreferences});

  // Future<void> login(
  //     {required UserModel user,
  //     required Function(dynamic data) success,
  //     required Function(String? message) error}) async {
  //   try {
  //     print(user.toJson());
  //     Response response = await dio.post(BaseUrl.login, data: user.toJson());
  //     if (response.statusCode == 200) {
  //       saveData(response.data);
  //       success(response.data);
  //     }
  //   } on DioException catch (e) {
  //     if (e.response?.statusCode == 404 || e.response?.statusCode == 401) {
  //       String? messageError = UtilMessageApi.getMessage(e);
  //       error(messageError);
  //     }
  //   }
  // }

  // void saveData(dynamic data) {
  //   int idUser = data[UtilConst.idUser] as int;
  //   String token = data[UtilConst.token];
  //   String refreshToken = data[UtilConst.refreshToken];
  //   sharedPreferences.setInt(UtilConst.idUser, idUser);
  //   sharedPreferences.setString(UtilConst.token, token);
  //   sharedPreferences.setString(UtilConst.refreshToken, refreshToken);
  // }
}
