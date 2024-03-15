
import 'package:base_setup/features/data/data_source/remote/user_data_sources.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../shared/data/network/api_service.dart';
import '../../entity/users/userlist_entity.dart';

class UserRemoteDSImpl extends UsersRemoteDS {
  final ApiService apiService;

  UserRemoteDSImpl(
  {required this.apiService,}
  );

  @override
  Future<HttpResponse<UserListEntity>> users() {
    return apiService.users();
  }
}
