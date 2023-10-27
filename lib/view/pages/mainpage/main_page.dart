import '../../../library.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: AfpScroller(
        width: width,
        height: height,
        children: [
          AffichePage(width: width, height: height),
          AlFahmyPage(width: width, height: height),
          DarkSidePage(width: width, height: height),
          GamingChannelPage(width: width, height: height),
        ],
      ),
    );
  }
}
