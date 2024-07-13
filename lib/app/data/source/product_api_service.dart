import 'package:dewakoding_kasir/core/constant/constant.dart';
import 'package:dewakoding_kasir/core/network/data_state.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'product_api_service.g.dart';

@RestApi()
abstract class ProductApiService {
  factory ProductApiService(Dio dio) {
    return _ProductApiService(dio);
  }

  @GET('${PRODUCT_URL_PATH}')
  Future<HttpResponse<DataState>> getAll();

  @GET('${PRODUCT_URL_PATH}/{id}')
  Future<HttpResponse<DataState>> getById({@Path('id') required int id});


  @GET('${PRODUCT_URL_PATH}/barcode/{barcode}')
  Future<HttpResponse<DataState>> getByBarcode({@Path('barcode') required String barcode});
}
