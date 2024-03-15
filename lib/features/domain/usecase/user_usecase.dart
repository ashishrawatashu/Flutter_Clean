
import 'package:either_dart/either.dart';

import '../../../shared/domain/error/network_error.dart';
import '../../../shared/domain/usecase/base/base_usecase.dart';
import '../model/users/user_list_model.dart';
import '../repository/user/user_repository.dart';

class UserUseCase extends BaseUseCase<NetworkError, UsersUseCaseParams, UserListModel> {
  final UserRepository userRepository;

  UserUseCase(this.userRepository);

  @override
  Future<Either<NetworkError, UserListModel>> execute({
     UsersUseCaseParams? params,
  }) {
    return userRepository.users();
  }
}

class UsersUseCaseParams {}
