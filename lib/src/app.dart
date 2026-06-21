import 'package:flutter_mvvm/src/imports/core_imports.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final current = _buildMaterialApp(context);
    return ScreenUtilWrapper(child: current);
  }

  Widget _buildMaterialApp(BuildContext context) {
    return MaterialApp.router(
      title: 'flutter_mvvm',
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(primaryColorHex: '#ffb43f'),
      darkTheme: buildDarkTheme(primaryColorHex: '#ffb43f'),
      themeMode: ThemeMode.system,
      routerConfig: appRouter,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: (context, child) {
        Widget current = child!;
        current = SkeletonWrapper(child: current);
        current = SessionListenerWrapper(child: current);
        return current;
      },
    );
  }
}