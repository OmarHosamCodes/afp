import 'package:flutter/material.dart';

import '../../../library.dart';

class ProjectsSliderWidget extends StatefulWidget {
  const ProjectsSliderWidget({
    super.key,
    required this.height,
    required this.width,
    required this.index,
  });
  final int index;
  final double height;
  final double width;

  @override
  State<ProjectsSliderWidget> createState() => _ProjectsSliderWidgetState();
}

class _ProjectsSliderWidgetState extends State<ProjectsSliderWidget> {
  bool showTextUnShowContainer = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: const Color.fromRGBO(33, 33, 33, 1),
              content: Hero(
                tag: widget.index.toString(),
                child: InteractiveViewer(
                  maxScale: 10,
                  minScale: 1,
                  child: Image(
                    image: NetworkImage(
                      ImgConstants.POSTER1,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            );
          },
        );
      },
      child: SizedBox(
        width: widget.width * .2,
        height: widget.height * .5,
        child: Hero(
          tag: widget.index.toString(),
          child: Image(
            image: NetworkImage(
              ImgConstants.POSTER1,
            ),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
