import 'package:crudoperationsmt/application/UserDetails/bloc/user_details_bloc.dart';
import 'package:crudoperationsmt/application/UserList/bloc/user_list_bloc.dart';
import 'package:crudoperationsmt/domain/dependency_injection.dart/injectable.dart';
import 'package:crudoperationsmt/presentation/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<UserDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UserListBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
