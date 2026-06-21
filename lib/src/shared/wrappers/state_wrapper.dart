import '../../imports/imports.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../ui/auth/bloc/session_bloc.dart';

/// A wrapper to initialize the chosen State Management library.
class StateWrapper extends StatelessWidget {
  final Widget child;

  const StateWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SessionBloc>(create: (_) => SessionBloc(repository: AuthRepositoryImpl())),
      ],
      child: child,
    );
  }
}
