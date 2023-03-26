// // ignore_for_file: unrelated_type_equality_checks, avoid_dynamic_calls, use_build_context_synchronously
//
// part of 'ChatImports.dart';
//
// class ChatData {
//   final GenericBloc<List<ChatMessageModel>> chatMessagesCubit = GenericBloc([]);
//   final GenericBloc<List<ChatMemberModel>> chatProfileCubit = GenericBloc([]);
//   ScrollController messageScrollController = ScrollController();
//   final TextEditingController messageController = TextEditingController();
//   StreamSocket streamSocket = StreamSocket();
//   late IO.Socket socket;
//   late bool isUser;
//   bool _isLoading = true;
//   late Duration myDuration;
//
//   bool get isLoading => _isLoading;
//   List<ChatMessageModel> messages = [];
//
//   void updateLoading(bool value) {
//     _isLoading = value;
//   }
//
//   void dispose() {
//     messageController.dispose();
//     socket.dispose();
//     socket.disconnect();
//   }
//
//   void fetchData(int roomId) async {
//     await getProfile(roomId);
//     await getMyMessages(roomId);
//     scrollToIndex();
//   }
//
//   Future socketConnectAndListen(
//     int roomId,
//       BuildContext context,
//   ) async {
//     var user = context.read<UserCubit>().state.model;
//     var type = user.userType;
//     log('socketConnectAndListen started...');
//     socket = IO.io('https://mohtarifon.hwzn.sa:4402',
//         IO.OptionBuilder().setTransports(['websocket']).build());
//     socket.connect();
//     socket.onConnect((_) {
//       log('socketServerConnected...');
//       log('connected: ${socket.id}');
//       log("type: $type, id: ${user.id}");
//       // Todo send the user type
//       socket.emit('enterChat', {
//         "user_id": "${type == user.id}",
//         "room_id": "$roomId",
//         "user_type": type,
//       });
//       log('socketServerConnected...');
//     });
//
//     socket.on('sendMessageRes', (data) {
//       log("sendMessageRes==> ${jsonEncode(data)}");
//       var jsonData = jsonEncode(data);
//       ChatMessageModel messageModel =
//           ChatMessageModel.fromJson(jsonDecode(jsonData));
//       chatMessagesCubit.state.data.add(messageModel);
//       chatMessagesCubit.onUpdateData(chatMessagesCubit.state.data);
//       streamSocket.addResponse(messageModel);
//     });
//
//     socket.onConnectError((connectError) {
//       log('onConnectError..$connectError');
//       CustomToast.showSimpleToast(msg: "Check your connection");
//     });
//     socket.onConnectTimeout((_) {
//       log('onConnectTimeout..');
//     });
//     socket.onError((error) {
//       log('onError.. $error');
//       CustomToast.showSimpleToast(msg: "Check your connection");
//     });
//     socket.onDisconnect((_) {
//       log('onDisconnect..');
//       CustomToast.showSimpleToast(msg: "Check your connection");
//     });
//   }
//
//   void sendMessage(int roomId, int providerId, BuildContext context) {
//     UserModel model = context.read<UserCubit>().state.model;
//     String message = messageController.text.trim();
//     if (message != "") {
//       ChatMessageModel chatMessage = ChatMessageModel(
//         senderId: model.id,
//         senderType: model.userType,
//         isSender: 1,
//         receiverId: providerId,
//         receiverType: model.userType == "client" ? "doctor" : "client",
//         roomId: roomId,
//         type: 'text',
//         body: message,
//         duration: 0,
//       );
//       messageController.text = "";
//       log("chatMessageModel==> ${jsonEncode(chatMessage)}");
//       chatMessagesCubit.state.data.add(chatMessage);
//       chatMessagesCubit.onUpdateData(chatMessagesCubit.state.data);
//       socket.emit("sendMessage", chatMessage);
//     } else {
//       CustomToast.showSimpleToast(msg: "Enter message first");
//     }
//   }
//
//   Future<void> getMyMessages(int roomId) async {
//     var data = await ChatMessagesUseCase().call(roomId);
//     chatMessagesCubit.onUpdateData(data);
//     chatMessagesCubit
//         .onUpdateData(chatMessagesCubit.state.data.reversed.toList());
//     EasyLoading.dismiss();
//   }
//
//   Future<void> getProfile(int roomId) async {
//     var data = await ChatMemberUseCase().call(roomId);
//     chatProfileCubit.onUpdateData(data);
//     EasyLoading.dismiss();
//   }
//
//   void scrollToIndex() {
//     // log("scrollToIndexFired ${chatMessages.length - 1}");
//     // log("scrollToIndex ${itemPositionsListener.itemPositions.value.last.index}");
//     // itemScrollController.jumpTo(index: chatMessages.length-1);
//   }
// }
//
// // STEP1:  Stream setup
// class StreamSocket {
//   final _socketResponse = StreamController<ChatMessageModel>();
//
//   void Function(ChatMessageModel) get addResponse => _socketResponse.sink.add;
//
//   Stream<ChatMessageModel> get getResponse => _socketResponse.stream;
//
//   void dispose() {
//     _socketResponse.close();
//   }
// }
