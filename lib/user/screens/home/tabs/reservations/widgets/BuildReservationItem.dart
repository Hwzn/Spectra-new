part of 'ReservationsWidgetsImports.dart';

class BuildReservationItem extends StatelessWidget {
  final String status;
  final Color statusColor;
  final bool ended;
  final Widget? endButton;
  final bool? fromDoctorHome;

  const BuildReservationItem({
    Key? key,
    required this.status,
    required this.statusColor,
    this.ended = false,
    this.endButton,
    this.fromDoctorHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    title: "22/02/2022  8:00 PM",
                    color: MyColors.lightGrey,
                    size: 11,
                  ),
                ),
              ),
              BuildReservationStatus(
                status: status,
                color: statusColor,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 5, top: 10),
                child: const CachedImage(
                  url:
                      "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2020-07/kitten-510651.jpg?h=f54c7448&itok=ZhplzyJ9",
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
                  title: "Pet Name",
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
                child: const CachedImage(
                  url:
                      "https://www.freshpondanimalhospital.com/uploads/SiteAssets/17/images/staff/804198.jpg",
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
                        title: "Aya Hamed",
                        color: MyColors.black,
                        size: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Row(
                      children: [
                        const CachedImage(
                          url:
                              "https://images.ctfassets.net/rt5zmd3ipxai/q6gWiPMWCl0vRTBgwhO9K/2bed2b68c9e0324a40e1f9804a49cce5/All_Creatures_Logo_Final-01_2.png",
                          height: 25,
                          width: 25,
                          haveRadius: false,
                          boxShape: BoxShape.circle,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 5),
                        MyText(
                          title: "Name",
                          color: MyColors.primary,
                          size: 12,
                        ),
                      ],
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
              title: "Join Session",
              height: 40,
              fontSize: 12,
              borderRadius: BorderRadius.circular(15),
              onTap: () => AutoRouter.of(context).push(
                SessionRoute(fromDoctorHome: fromDoctorHome),
              ),
            ),
          )
        ],
      ),
    );
  }
}
