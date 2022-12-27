part of 'login_widgets_imports.dart';

class BuildSocial extends StatelessWidget {
  const BuildSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyText(
          title: " او باستخدام",
          color: MyColors.black,
          size: 12,
          fontWeight: FontWeight.bold,
        ),
        BlocBuilder<SettingCubit, SettingState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  state.model.socials!.length,
                  (index) => InkWell(
                    onTap: () => HelperMethods.launchURL(
                        url: state.model.socials?[index].link ?? ''),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Image.network(
                        state.model.socials?[index].image ?? '',
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
