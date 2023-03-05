part of 'AddPostWidgetsImports.dart';

class BuildPostCats extends StatelessWidget {
  final AddPostData addPostData;
  const BuildPostCats({Key? key, required this.addPostData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<DropDownModel>>,
        GenericState<List<DropDownModel>>>(
      bloc: addPostData.categoriesBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Wrap(
            spacing: 5,
            direction: Axis.horizontal,
            children: List.generate(
              state.data.length,
                  (index) => InkWell(
                onTap: () => addPostData.selectCategory(index),
                child: BuildPostType(
                  title: state.data[index].name ?? '',
                  selected: state.data[index].selected,
                ),
              ),
            ),
          );
        } else {
          return JumpingDots(
            color: MyColors.secondary,
            radius: 10,
            numberOfDots: 3,
          );
        }
      },
    );
  }
}
