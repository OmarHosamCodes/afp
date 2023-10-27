import 'package:flutter/material.dart';

import '../../../library.dart';

class MainPageTopSection extends StatelessWidget {
  const MainPageTopSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        color: Colors.black.withOpacity(.3),
        child: Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Flexible(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TextConstants.MAIN1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * .05,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    TextConstants.MAIN2,
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: width * .07,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    TextConstants.MAIN3,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * .01,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    TextConstants.MAIN4,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * .01,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    TextConstants.MAIN5,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * .01,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    TextConstants.MAIN6,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * .01,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: Image(
                image: NetworkImage(ImgConstants.AFMAINIMG, scale: .1),
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
          ],
        ),
      ),
    );
  }
}
