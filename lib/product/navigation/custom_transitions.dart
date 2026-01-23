// part of 'app_gorouter.dart';

// /// Sağdan sola kayarak açılan sayfa geçişi
// Page<dynamic> slideRightTransition({
//   required LocalKey key,
//   required Widget child,
// }) {
//   return CustomTransitionPage(
//     key: key,
//     child: child,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(1, 0);
//       const end = Offset.zero;
//       const curve = Curves.easeInOut;

//       final tween = Tween(begin: begin, end: end).chain(
//         CurveTween(curve: curve),
//       );
//       final offsetAnimation = animation.drive(tween);

//       return SlideTransition(
//         position: offsetAnimation,
//         child: child,
//       );
//     },
//   );
// }
