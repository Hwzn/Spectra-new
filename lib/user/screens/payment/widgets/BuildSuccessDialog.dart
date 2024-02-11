part of 'PaymentWidgetsImports.dart';

class BuildSuccessDialog extends StatelessWidget {
  const BuildSuccessDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: MyColors.white, borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: MyColors.greyWhite,
            ),
            child: const Icon(
              Icons.check,
              color: Colors.green,
              size: 50,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: MyText(
              title: tr(context, 'successPayment'),
              color: MyColors.black,
              size: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
          DefaultButton(
            title: tr(context, 'goToSession'),
            margin: EdgeInsets.zero,
            onTap: ()=> AutoRouter.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
