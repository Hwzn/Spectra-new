part of 'AddPostWidgetsImports.dart';

class BuildAddPostImages extends StatelessWidget {
  final AddPostData addPostData;
  const BuildAddPostImages({Key? key, required this.addPostData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<File>>, GenericState<List<File>>>(
      bloc: addPostData.imagesBloc,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            state.data.length,
                (index) => Container(
              height: 120,
              width: 100,
              margin: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: FileImage(state.data[index]),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: ()=> addPostData.removeImage(index),
                child: Icon(
                  Icons.cancel,
                  color: MyColors.secondary,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
