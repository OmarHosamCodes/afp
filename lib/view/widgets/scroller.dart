import '../../library.dart';

class AfpScroller extends StatelessWidget {
  const AfpScroller({
    super.key,
    required this.children,
    required this.width,
    required this.height,
  });
  final List<Widget> children;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: children.length,
      itemBuilder: (context, index) => SizedBox(
        height: height,
        width: width,
        child: children[index],
      ),
    );
  }
}
