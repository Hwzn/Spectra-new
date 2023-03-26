// part of 'ChatImports.dart';
//
// class Chat extends StatefulWidget {
//   final int roomId;
//   final int receiverId;
//
//   const Chat({
//     Key? key,
//     required this.roomId,
//     required this.receiverId,
//   }) : super(key: key);
//
//   @override
//   State<Chat> createState() => _ChatState();
// }
//
// class _ChatState extends State<Chat> {
//   final ChatData chatData = ChatData();
//
//   @override
//   void initState() {
//     chatData.fetchData(widget.roomId);
//     chatData.socketConnectAndListen(
//       widget.roomId,
//     );
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var user = context.read<UserCubit>().state.model;
//     return WillPopScope(
//       onWillPop: () async {
//         Navigator.pop(context);
//         return true;
//       },
//       child: Scaffold(
//         backgroundColor: MyColors.bg,
//         appBar: const DefaultAppBar(
//           title: "",
//         ),
//         body: BlocBuilder<GenericBloc<List<ChatMessageModel>>,
//             GenericState<List<ChatMessageModel>>>(
//           bloc: chatData.chatMessagesCubit,
//           builder: (context, state) {
//             if (state is GenericUpdateState) {
//               return Column(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(horizontal: 10),
//                       decoration: const BoxDecoration(
//                         borderRadius: BorderRadius.vertical(
//                           top: Radius.circular(
//                             28.0,
//                           ),
//                         ),
//                       ),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               CachedImage(
//                                 height: 40,
//                                 width: 100,
//                                 url: chatData
//                                     .chatProfileCubit.state.data.first.image,
//                                 borderRadius: BorderRadius.circular(25),
//                               ),
//                               const SizedBox(
//                                 width: 10,
//                               ),
//                               MyText(
//                                 title: chatData
//                                     .chatProfileCubit.state.data.first.name,
//                                 size: 12,
//                                 fontWeight: FontWeight.bold,
//                                 color: MyColors.primary,
//                               ),
//                               const Spacer(),
//                               Image.asset(
//                                 Res.logo,
//                                 scale: 2.5,
//                               )
//                             ],
//                           ),
//                           StreamBuilder(
//                             stream: chatData.streamSocket.getResponse,
//                             builder: (BuildContext context,
//                                 AsyncSnapshot<ChatMessageModel> snapshot) {
//                               return Expanded(
//                                 child: chatData
//                                         .chatMessagesCubit.state.data.isNotEmpty
//                                     ? ListView.builder(
//                                         shrinkWrap: true,
//                                         padding: const EdgeInsets.all(2.0),
//                                         controller: chatData
//                                             .messageScrollController,
//                                         itemBuilder: (c, index) {
//                                           //to scroll  to bottom
//                                           SchedulerBinding.instance
//                                               .addPostFrameCallback((_) {
//                                             chatData
//                                                 .messageScrollController
//                                                 .jumpTo(
//                                               chatData
//                                                   .messageScrollController
//                                                   .position
//                                                   .maxScrollExtent,
//                                             );
//                                           });
//                                           ChatMessageModel chatMessageModel =
//                                               chatData.chatMessagesCubit
//                                                   .state.data[index];
//                                           if (chatMessageModel.isSender == 1) {
//                                             return BuildSenderMsg(
//                                                 chatMessageModel:
//                                                     chatMessageModel);
//                                           } else {
//                                             return BuildRecieverMsg(
//                                               chatMessageModel:
//                                                   chatMessageModel,
//                                             );
//                                           }
//                                         },
//                                         scrollDirection: Axis.vertical,
//                                         physics: const BouncingScrollPhysics(),
//                                         itemCount: chatData
//                                             .chatMessagesCubit
//                                             .state
//                                             .data
//                                             .length)
//                                     : Container(
//                                         margin: EdgeInsets.only(
//                                           top: AppConstants.margin110,
//                                         ),
//                                         child: (Lottie.asset(
//                                           Res.noItems,
//                                         )),
//                                       ),
//                               );
//                             },
//                           ),
//                           const SizedBox(
//                             height: 16,
//                           ),
//                           GenericTextField(
//                             controller: chatData.messageController,
//                             fillColor: MyColors.white,
//                             fieldTypes: FieldTypes.chat,
//                             type: TextInputType.text,
//                             action: TextInputAction.send,
//                             hint: "اكتب رسالتك هنا",
//                             validate: (v) {},
//                             margin: EdgeInsets.symmetric(
//                               horizontal: AppConstants.margin20,
//                               vertical: AppConstants.margin10,
//                             ),
//                             suffixIcon: InkWell(
//                               onTap: () {
//                                 // chatController.messageController.text = "";
//                                 chatData.sendMessage(
//                                     widget.roomId, widget.receiverId);
//                               },
//                               child: Image.asset(
//                                 Res.send,
//                                 scale: 2,
//                               ),
//                             ),
//                           ),
//                         ],
//                  receiverId                  ),
//                   ),
//                 ],
//               );
//             } else {
//               return ListView(
//                 padding:
//                     EdgeInsets.symmetric(horizontal: AppConstants.padding10),
//                 children: List.generate(
//                   10,
//                   (index) => BuildShimmerView(
//                     width: AppConstants.width20,
//                     height: AppConstants.height40,
//                     vMargin: AppConstants.margin10,
//                     borderRadius: BorderRadius.circular(
//                       AppConstants.radius10,
//                     ),
//                   ),
//                 ),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
