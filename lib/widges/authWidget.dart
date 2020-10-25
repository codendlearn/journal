import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:journal/models/user.dart';

final userProvider = FutureProvider(
    (x) => Future.delayed(Duration(seconds: 5), () => User("a", "asdf")));

class AuthWidget extends ConsumerWidget {
  const AuthWidget({
    Key key,
    @required this.signedInBuilder,
    @required this.nonSignedInBuilder,
  }) : super(key: key);
  final WidgetBuilder nonSignedInBuilder;
  final WidgetBuilder signedInBuilder;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final authStateChanges = watch(userProvider);
    return authStateChanges.when(
      data: (user) => Text("data"),
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (_, __) => const Scaffold(
        body: Text(
          'Something went wrong',
        ),
      ),
    );
  }

  Widget _data(BuildContext context, User user) {
    if (user != null) {
      return signedInBuilder(context);
    }
    return nonSignedInBuilder(context);
  }
}
