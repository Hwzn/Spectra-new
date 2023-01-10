part of 'AddPetImports.dart';

class AddPet extends StatefulWidget {
  const AddPet({Key? key}) : super(key: key);

  @override
  State<AddPet> createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {
  AddPetData addPetData = AddPetData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(title: "Add Pet"),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          BuildAddPetPhoto(addPetData: addPetData),
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            hint: "Pet Name",
            controller: addPetData.petName,
            margin: const EdgeInsets.symmetric(vertical: 15),
            action: TextInputAction.done,
            type: TextInputType.name,
            validate: (value)=> value!.validateEmpty(context),
            radius: 15,
          ),
          const BuildUploadFile(),
          const BuildUploadFile(),
        ],
      ),
      bottomNavigationBar: DefaultButton(
        title: "Add Pet",
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
