// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart' show Shimmer;

// class AnimatedLoadingBar extends StatelessWidget {
//   const AnimatedLoadingBar({super.key, this.height = 4.5});
//   final double height;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: height,
//       width: double.infinity,
//       child: Shimmer(
//         gradient: const LinearGradient(
//           colors: [
//             Color(0xFF4285F4), // Mavi
//             Color(0xFF4285F4),
//             Color(0xFF4285F4),
//             Color(0xFF4285F4),
//             Color(0xFFEA4335), // Kırmızı
//             Color(0xFFEA4335),
//             Color(0xFFFBBC05), // Sarı
//             Color(0xFFFBBC05),
//             Color(0xFFFBBC05),
//             Color(0xFFFBBC05),
//             Color(0xFFFBBC05),
//             Color(0xFF34A853), // Yeşil
//             Color(0xFF34A853),
//             Color(0xFF34A853),
//             Color(0xFF34A853),
//             Color(0xFF4285F4), // Mavi (loop)
//             Color(0xFF4285F4),
//             Color(0xFF4285F4),
//             Color(0xFF4285F4),
//           ],
//         ),
//         period: const Duration(milliseconds: 5000),
//         child: Container(
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }
