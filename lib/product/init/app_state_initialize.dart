import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map2game/product/state/cubit/theme/theme_cubit.dart';

final class StateInitialize extends StatelessWidget {
  const StateInitialize({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: child,
    );
  }
}
//  child: DeepLinkHandler(child: child),s