part of 'PaymentImports.dart';

class PaymentData {
  // controllers
  final TextEditingController cardNumber = TextEditingController();
  final TextEditingController endDate = TextEditingController();
  final TextEditingController ccv = TextEditingController();
  final TextEditingController cardHolderNumber = TextEditingController();

  // methods
  successDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: const BuildSuccessDialog(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
      ),
    );
  }
}
