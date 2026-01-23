// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:map2game/future/login_process/login/auth_state/auth_cubit.dart';
// import 'package:map2game/future/views/map/state/cubit/map_cubit.dart';
// import 'package:map2game/future/views/notification/state/notification_v2_cubit.dart';
// import 'package:map2game/product/init/initialize/deep_link_handler.dart';
// import 'package:map2game/product/service/service_locator.dart';
// import 'package:map2game/product/state/cubit/theme/theme_cubit.dart';

// final class StateInitialize extends StatelessWidget {
//   const StateInitialize({required this.child, super.key});
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (context) => ThemeCubit()),
//         BlocProvider(
//           create: (context) => MapCubit(
//             context.read<ThemeCubit>(),
//           ),
//         ),
//         BlocProvider(
//           create: (context) => AuthCubit(
//             authService: locator.authService,
//           ),
//         ),
//         BlocProvider(
//           create: (context) => NotificationV2Cubit(),
//         ),
//       ],
//       child: DeepLinkHandler(child: child),
//     );
//   }
// }
