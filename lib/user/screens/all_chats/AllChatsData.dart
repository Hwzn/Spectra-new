part of 'AllChatsImports.dart';

class AllChatsData {
  // blocs
  final GenericBloc<List<ChatModel>> chatsBloc = GenericBloc([]);

  // methods
  fetchData(BuildContext context) async {
    var data = await UserRepository(context).getAllChats();
    chatsBloc.onUpdateData(data);
  }

}