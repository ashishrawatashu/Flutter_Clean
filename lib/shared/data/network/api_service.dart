import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../features/data/entity/users/userlist_entity.dart';

part 'api_service.g.dart';

//flutter pub run build_runner build
@RestApi()
abstract class ApiService {
  factory ApiService({
    required Dio dio,
    required String baseUrl,
  }) {
    return _ApiService(dio, baseUrl: baseUrl);
  }

  @GET("/users")
  Future<HttpResponse<UserListEntity>> users();



}
