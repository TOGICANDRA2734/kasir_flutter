import 'package:dewakoding_kasir/core/constant/constant.dart';
import 'package:dewakoding_kasir/core/network/data_state.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'setting_api_service.g.dart';

@RestApi()
abstract class SettingApiService {
  factory SettingApiService(Dio dio) {
    return _SettingApiService(dio);
  }

  @GET('${SETTING_URL_PATH}')
  Future<HttpResponse<DataState>> get();
}
