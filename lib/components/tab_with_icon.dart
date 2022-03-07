// import 'package:flutter/material.dart';
//
// class TabWithIcon extends StatelessWidget {
//
//   final Icon icon;
//   final String label;
//   final Color color;
//
//   TabWithIcon({
//     required this.icon,
//     required this.label,
//     required this.color,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 36),
//       child: SizedBox(
//         width: double.infinity,
//         height: 50,
//         child: Container.icon(
//           style: ElevatedButton.styleFrom(
//             primary: color,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(8.0)),
//             ),
//           ),
//           icon: icon,
//           label: Text(label, style: TextStyle(fontSize: 10),),
//         ),
//       ),
//     );
//   }
// }
