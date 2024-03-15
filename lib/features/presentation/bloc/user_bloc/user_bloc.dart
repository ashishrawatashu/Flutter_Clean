import 'package:base_setup/features/domain/usecase/user_usecase.dart';
import 'package:base_setup/features/presentation/bloc/user_bloc/user_event.dart';
import 'package:base_setup/features/presentation/bloc/user_bloc/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
