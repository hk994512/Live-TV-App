// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/alert.dart';

// class ActionList extends StatelessWidget {
//   const ActionList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final xv = Provider.of<AlertDialogBox>(context);
//     return Row(
//       children: [
//         IconButton(
//           focusColor: Colors.teal,
//           onPressed: () {
//             Navigator.pushNamed(context, AddChannel.add);
//           },
//           icon: const Icon(
//             Icons.cast,
//             weight: 20,
//             color: Color.fromARGB(255, 16, 194, 218),
//           ),
//           tooltip: "Add  your own Channel",
//         ),
//         IconButton(
//             onPressed: () {
//               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                 duration: const Duration(seconds: 3),
//                 content: const Center(child: Text("")),
//                 action: SnackBarAction(
//                     label: "OK",
//                     onPressed: () {
//                       Navigator.of(context);
//                     }),
//                 dismissDirection: DismissDirection.up,
//               ));
//             },
//             icon: const Icon(
//               Icons.color_lens,
//               color: Colors.green,
//             )),
//         const SizedBox(
//           width: 3,
//         ),
//         IconButton(
//             onPressed: () {
//               xv.showAlertDialog(context);
//             },
//             icon: const Icon(
//               Icons.copyright_outlined,
//               color: Color.fromARGB(255, 170, 131, 12),
//             )),
//       ],
//     );
//   }
// }
