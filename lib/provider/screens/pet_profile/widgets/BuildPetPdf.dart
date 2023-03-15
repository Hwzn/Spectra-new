part of 'PetProfileWidgetsImports.dart';

class BuildPetPdf extends StatelessWidget {
  final List<PetAttachment> petAttachments;

  const BuildPetPdf({Key? key, required this.petAttachments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: petAttachments.isNotEmpty,
      replacement: DefaultContainer(
        width: MediaQuery.of(context).size.width,
        child: MyText(
          title: "No Attachments",
          color: MyColors.blackOpacity,
          size: 12,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 15, right: 20, left: 20, bottom: 5),
            child: MyText(
              title: "Attachments",
              color: MyColors.black,
              size: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          ...List.generate(
            petAttachments.length,
            (index) => Visibility(
              visible: petAttachments[index].type != 'image',
              child: InkWell(
                onTap: () =>
                    HelperMethods.launchURL(url: petAttachments[index].url),
                child: DefaultContainer(
                  child: Row(
                    children: [
                      Image.asset(Res.pdf, height: 30, width: 30),
                      const SizedBox(width: 10),
                      Expanded(
                        child: MyText(
                          title: petAttachments[index].url,
                          color: MyColors.blackOpacity,
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(
                petAttachments.where((e) => e.type == "image").length,
                (index) => InkWell(
                  onTap: () => AutoRouter.of(context).push(
                    ImageZoomRoute(
                      images: petAttachments
                          .where((e) => e.type == "image")
                          .map((e) => e.url)
                          .toList(),
                    ),
                  ),
                  child: CachedImage(
                    url: petAttachments[index].url,
                    height: 100,
                    width: 80,
                    borderRadius: BorderRadius.circular(10),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
