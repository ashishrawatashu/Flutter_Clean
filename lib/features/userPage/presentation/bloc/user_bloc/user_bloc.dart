import 'package:base_setup/features/userPage/presentation/bloc/user_bloc/user_event.dart';
import 'package:base_setup/features/userPage/presentation/bloc/user_bloc/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/user_usecase.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserUseCase _getUserList;
  UserBloc(this._getUserList) : super(UserEmpty()) {
    on<GetUserData>(
      (event, emit) async {
        emit(UserLoading());
        final result = await _getUserList.execute();
        result.fold(
          (error) {
            emit(UserError(error));
          },
          (data) {
            emit(UserHasData(data));
          },
        );
      },
    );
  }
}
