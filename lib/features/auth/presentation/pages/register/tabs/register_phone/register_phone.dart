part of'register_phone_imports.dart';

class RegisterPhone extends StatefulWidget {
  final String name;
  final RegisterData registerData;
  const RegisterPhone({Key? key,required this.name,required this.registerData}) : super(key: key);

  @override
  _RegisterPhoneState createState() => _RegisterPhoneState();
}

class _RegisterPhoneState extends State<RegisterPhone> {
  @override
  void initState() {
    print("name  isssssss${widget.name}");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAuthAppBar(title:"Hello, ${widget.registerData.registerBloc.state.data.name.split(" ").first}",onBack: ()=>widget.registerData.goBack(),),
      body: ListView(
        children: [
          LinearProgressIndicator(value:.66,color: MyColors.infoColor,backgroundColor: MyColors.grey.withOpacity(.2),),
          RegisterPhoneForm(registerData: widget.registerData,),
          RegisterPhoneButton(registerData: widget.registerData,)
        ],
      ),
    );
  }
}