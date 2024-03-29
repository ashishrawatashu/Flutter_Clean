import 'package:base_setup/di/injection.dart' as I;
import 'package:base_setup/main/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/userPage/presentation/bloc/user_bloc/user_bloc.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  I.configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => I.getIt<UserBloc>(),
        ),
      ],
      child: App(),
    );
  }
}
