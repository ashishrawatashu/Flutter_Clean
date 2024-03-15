
import 'package:equatable/equatable.dart';
import '../../../../../shared/domain/error/network_error.dart';
import '../../../domain/model/users/user_list_model.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => [];
}

class UserEmpty extends UserState {}

class UserLoading extends UserState {}

class UserError extends UserState {
  final NetworkError error;

  UserError(this.error);

  @override
  List<Object?> get props => [error];
}

class UserHasData extends UserState {
  final UserListModel result;

  UserHasData(this.result);

  @override
  List<Object?> get props => [result];
}