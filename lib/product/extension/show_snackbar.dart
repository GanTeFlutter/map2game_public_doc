// import 'package:flutter/material.dart';

/*

// Success
context.showSuccessSnackBar('Kayıt başarılı!');

// Error
context.showErrorSnackBar('Bir hata oluştu!');

// Warning
context.showWarningSnackBar('Dikkat! Bu işlem geri alınamaz');

// Info
context.showInfoSnackBar('Yeni güncelleme mevcut');

// Custom
context.showSnackBar(
  'Özel mesaj',
  duration: Duration(seconds: 5),
  action: SnackBarAction(
    label: 'GERI AL',
    onPressed: () {},
  ),
);

*/

// extension ContextExtension on BuildContext {
//   void showSnackBarBasic(String message, {bool isError = false}) {
//     ScaffoldMessenger.of(this).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         backgroundColor: isError
//             ? Theme.of(this).colorScheme.error
//             : Theme.of(this).snackBarTheme.backgroundColor,
//         action: SnackBarAction(
//           label: 'OK',
//           textColor: Colors.white,
//           onPressed: () {},
//         ),
//       ),
//     );
//   }

//   void showSnackBar(
//     String message, {
//     bool isError = false,
//     Duration duration = const Duration(seconds: 3),
//     SnackBarAction? action,
//     bool showCloseIcon = true,
//   }) {
//     ScaffoldMessenger.of(this)
//       ..hideCurrentSnackBar()
//       ..showSnackBar(
//         SnackBar(
//           content: Text(message),
//           duration: duration,
//           backgroundColor: isError
//               ? Theme.of(this).colorScheme.error
//               : Theme.of(this).colorScheme.inverseSurface,
//           behavior: SnackBarBehavior.floating,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           action: action,
//           showCloseIcon: showCloseIcon,
//           closeIconColor: Colors.white,
//         ),
//       );
//   }

//   void showSuccessSnackBar(String message) {
//     ScaffoldMessenger.of(this)
//       ..hideCurrentSnackBar()
//       ..showSnackBar(
//         SnackBar(
//           content: Row(
//             children: [
//               const Icon(Icons.check_circle, color: Colors.white),
//               const SizedBox(width: 12),
//               Expanded(child: Text(message)),
//             ],
//           ),
//           backgroundColor: Colors.green,
//           behavior: SnackBarBehavior.floating,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           showCloseIcon: true,
//         ),
//       );
//   }

//   void showErrorSnackBar(String message) {
//     ScaffoldMessenger.of(this)
//       ..hideCurrentSnackBar()
//       ..showSnackBar(
//         SnackBar(
//           content: Row(
//             children: [
//               const Icon(Icons.error_outline, color: Colors.white),
//               const SizedBox(width: 12),
//               Expanded(child: Text(message)),
//             ],
//           ),
//           backgroundColor: Theme.of(this).colorScheme.error,
//           behavior: SnackBarBehavior.floating,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           showCloseIcon: true,
//         ),
//       );
//   }

//   void showWarningSnackBar(String message) {
//     ScaffoldMessenger.of(this)
//       ..hideCurrentSnackBar()
//       ..showSnackBar(
//         SnackBar(
//           content: Row(
//             children: [
//               const Icon(Icons.warning_amber_rounded, color: Colors.white),
//               const SizedBox(width: 12),
//               Expanded(child: Text(message)),
//             ],
//           ),
//           backgroundColor: Colors.orange,
//           behavior: SnackBarBehavior.floating,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           showCloseIcon: true,
//         ),
//       );
//   }

//   void showInfoSnackBar(String message) {
//     ScaffoldMessenger.of(this)
//       ..hideCurrentSnackBar()
//       ..showSnackBar(
//         SnackBar(
//           content: Row(
//             children: [
//               const Icon(Icons.info_outline, color: Colors.white),
//               const SizedBox(width: 12),
//               Expanded(child: Text(message)),
//             ],
//           ),
//           backgroundColor: Colors.blue,
//           behavior: SnackBarBehavior.floating,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           showCloseIcon: true,
//         ),
//       );
//   }
// }
