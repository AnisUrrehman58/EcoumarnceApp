import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edged_widget.dart';
import 'circular_container.dart';

class TPrimaryHeadContainer extends StatelessWidget {
  const TPrimaryHeadContainer({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgedWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child:   Stack(
          children: [
            Positioned(top: -150,right: -250, child: TCircularContainer(backgroundColor: TColors.white.withOpacity(0.1),)),
            Positioned(top: 100,right: -300, child: TCircularContainer(backgroundColor: TColors.white.withOpacity(0.1),)),
            child,
          ],
        ),
      ),
    );
  }
}