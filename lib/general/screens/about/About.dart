part of 'AboutImports.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> with AboutData {
  @override
  void initState() {
    fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      appBar: const DefaultAppBar(title: 'عن التطبيق'),
      showTitle: false,
      body: BlocBuilder<GenericBloc<String>, GenericState<String>>(
        bloc: aboutCubit,
        builder: (_, state) {
          if (state is GenericUpdateState) {
            return BuildAboutView(text: state.data);
          } else {
            return LoadingDialog.showLoadingView();
          }
        },
      ),
    );
  }
}
