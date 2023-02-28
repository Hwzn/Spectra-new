part of 'MainWidgetsImports.dart';

class BuildSpecItem extends StatelessWidget {
  final DropDownModel model;

  const BuildSpecItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context)
          .push(SpecializationRoute(specId: model.id ?? 0, specName: model.name??'')),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width * 0.27,
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: MyColors.greyWhite,
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Res.paw,
              color: MyColors.primary,
              height: 30,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: MyText(
                title: model.name ?? '',
                color: MyColors.blackOpacity,
                size: 10,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
