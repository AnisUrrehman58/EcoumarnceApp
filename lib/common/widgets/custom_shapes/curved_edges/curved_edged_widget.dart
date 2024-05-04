
import 'package:flutter/cupertino.dart';

import 'curved_edged.dart';

class TCurvedEdgedWidget extends StatelessWidget {
  const TCurvedEdgedWidget({
    super.key, this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: TCustomCurvedEdged(

        ),
        child: child
    );
  }
}
