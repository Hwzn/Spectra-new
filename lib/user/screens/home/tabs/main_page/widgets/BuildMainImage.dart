part of 'MainWidgetsImports.dart';

class BuildMainImage extends StatelessWidget {
  const BuildMainImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: MyColors.greyWhite,
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
        image: const DecorationImage(
            image: NetworkImage(
                "https://media.istockphoto.com/id/946031672/photo/dog-pet-animal-bathtub.jpg?s=612x612&w=0&k=20&c=Fj5wL3P2Qy4QtGeQcqwVHehrchHMHqsRHzXrKdIm-70="),
            fit: BoxFit.fill),
      ),
    );
  }
}
