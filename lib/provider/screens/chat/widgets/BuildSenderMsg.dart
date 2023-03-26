// part of 'ChatWidgetsImports.dart';
//
// class BuildSenderMsg extends StatelessWidget {
//   final ChatMessageModel chatMessageModel;
//
//   const BuildSenderMsg({Key? key, required this.chatMessageModel})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Flexible(
//           child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               margin: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 48.0),
//               decoration: BoxDecoration(
//                 color: MyColors.primary,
//                 borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(20.0),
//                   bottomLeft: Radius.circular(10.0),
//                   topRight: Radius.circular(10.0),
//                   bottomRight: Radius.circular(
//                     0.0,
//                   ),
//                 ),
//               ),
//               child: Text(
//                 chatMessageModel.body,
//                 style: const TextStyle(color: Colors.white),
//               )),
//         ),
//       ],
//     );
//   }
// }
