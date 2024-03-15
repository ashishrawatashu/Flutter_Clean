import 'package:retrofit/dio.dart';

import '../../entity/users/userlist_entity.dart';

abstract class UsersRemoteDS {
  Future<HttpResponse<UserListEntity>> users();
}
