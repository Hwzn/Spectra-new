part of 'RegisterWidgetsImports.dart';

class BuildTermsAndPolicy extends StatelessWidget {
  final RegisterData registerDate;

  const BuildTermsAndPolicy({Key? key, required this.registerDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: registerDate.termCubit,
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              Checkbox(
                activeColor: MyColors.primary,
                value: state.data,
                onChanged: (value) => registerDate.termCubit.onUpdateData(value!),
              ),
              GestureDetector(
               // onTap: () => AutoRouter.of(context).push(const TermsRoute()),
                //onTap: () => AutoRouter.of(context).push(const AboutRoute()),
                onTap: () => AutoRouter.of(context).push(const ContactUsRoute()),
                child: MyText(
                  title: "الموافقه علي الشروط والاحكام",
                  color: MyColors.black,
                  size: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
