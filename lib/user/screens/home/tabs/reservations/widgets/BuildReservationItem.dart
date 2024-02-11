part of 'ReservationsWidgetsImports.dart';

class BuildReservationItem extends StatelessWidget {
  final Color statusColor;
  final bool ended;
  final Widget? endButton;
  final bool fromDoctorHome;
  final ReservationModel model;

  const BuildReservationItem({
    Key? key,
    required this.statusColor,
    this.ended = false,
    this.endButton,
    this.fromDoctorHome = false, required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(ended && !fromDoctorHome){
          AutoRouter.of(context).push(ReviewSessionRoute(model: model));
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: MyColors.greyWhite,
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.access_time_sharp,
                  size: 20,
                  color: MyColors.lightGrey,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: MyText(
                      title: model.dateTime,
                      color: MyColors.lightGrey,
                      size: 11,
                    ),
                  ),
                ),
                BuildReservationStatus(
                  status: model.status,
                  color: statusColor,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 5, top: 10),
                  child: CachedImage(
                    url: model.petImage,
                    height: 30,
                    width: 30,
                    haveRadius: false,
                    boxShape: BoxShape.circle,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: MyText(
                    title: model.petName,
                    color: MyColors.black,
                    size: 11,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: CachedImage(
                    url: model.doctorDetails.image,
                    height: 50,
                    width: 50,
                    haveRadius: false,
                    boxShape: BoxShape.circle,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RatingBar.builder(
                        initialRating: 2,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        updateOnDrag: false,
                        itemCount: 5,
                        itemSize: 12,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        ignoreGestures: true,
                        onRatingUpdate: (index) {},
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: MyText(
                          title: model.doctorDetails.name,
                          color: MyColors.black,
                          size: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Visibility(
              visible: !ended,
              replacement: endButton ?? const SizedBox(height: 10),
              child: DefaultButton(
                title: tr(context, 'joinSession'),
                height: 40,
                fontSize: 12,
                borderRadius: BorderRadius.circular(15),
                onTap: () => AutoRouter.of(context).push(
                  SessionRoute(fromDoctorHome: fromDoctorHome, model: model),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
