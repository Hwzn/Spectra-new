// part of 'ChatWidgetsImports.dart';
//
// class BuildReceiverMsg extends StatelessWidget {
//   final ChatMessageModel chatMessageModel;
//
//   const BuildReceiverMsg({Key? key, required this.chatMessageModel})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Flexible(
//           child: Container(
//             margin: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 48.0),
//             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//             decoration: BoxDecoration(
//                 color: MyColors.white,
//                 borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(10.0),
//                     bottomLeft: Radius.circular(0.0),
//                     topRight: Radius.circular(10.0),
//                     bottomRight: Radius.circular(20.0)),
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 2.0,
//                     spreadRadius: 1.0,
//                     offset: Offset(0.0, 2.0),
//                   ),
//                 ]),
//             child: Text(
//               chatMessageModel.body,
//               textAlign: TextAlign.end,
//               style: const TextStyle(
//                 color: Colors.black,
//               ),
//               maxLines: 5,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
