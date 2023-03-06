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
            margin: const EdgeInsets.symmetric(vertical: 8),
            action: TextInputAction.done,
            type: TextInputType.name,
            validate: (value) => value!.validateEmpty(context),
            radius: 15,
          ),
          GenericTextField(
            fieldTypes: FieldTypes.rich,
            hint: "Pet Details",
            max: 3,
            controller: addPetData.details,
            margin: const EdgeInsets.symmetric(vertical: 8),
            action: TextInputAction.done,
            type: TextInputType.text,
            validate: (value) => value!.validateEmpty(context),
            radius: 15,
          ),
          BuildUploadFile(addPetData: addPetData),
        ],
      ),
      bottomNavigationBar: DefaultButton(
        title: "Add Pet",
        onTap: ()=> addPetData.addPet(context),
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
