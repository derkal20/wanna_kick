import 'package:go_router/go_router.dart';
import 'package:wanna_kick/routes/app_route_name.dart';
import 'package:wanna_kick/pages/auth/forgotPassword.dart';
import 'package:wanna_kick/pages/auth/signin.dart';
import 'package:wanna_kick/pages/auth/signup.dart';
import 'package:wanna_kick/pages/home/home.dart';

final GoRouter router = GoRouter(
  initialLocation: SignIn,
  routes: [
    GoRoute(
      path: SignIn,
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: SignUp,
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: forgotPassword,
      builder: (context, state) => const forgotPasswordPage(),
    ),
    GoRoute(
      path: Home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
