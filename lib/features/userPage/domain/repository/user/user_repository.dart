import 'package:either_dart/either.dart';
import '../../../../../shared/domain/error/network_error.dart';
import '../../model/users/user_list_model.dart';

abstract class UserRepository {
  Future<Either<NetworkError, UserListModel>> users();
}
