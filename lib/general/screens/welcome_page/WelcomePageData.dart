part of 'WelcomePageImports.dart';

class WelcomePageData {
  // blocs
  final GenericBloc<double> dotsBloc = GenericBloc(0);

  // controllers
  final CarouselController carouselController = CarouselController();

  // variables
  List<String> data = [
    "https://img.freepik.com/free-photo/veterinarian-check-ing-puppy-s-health_23-2148728396.jpg?w=2000",
    "https://www.germanvet.ae/wp-content/uploads/2022/10/vet-in-khalifa-city-001.jpg",
    "https://lazypawvet.com/wp-content/uploads/2019/11/juaine_hunter_350-214x300.jpg",
  ];
}
