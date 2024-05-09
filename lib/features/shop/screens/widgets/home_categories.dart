import 'package:flutter/cupertino.dart';

import '../../../../common/widgets/Image_Text/vertical_image_text.dart';
import '../../../../utils/constants/image_strings.dart';

class T_Home_Categories extends StatelessWidget {
  const T_Home_Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount:7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_,index) {
            /// Return must bi Assign
            return  TVerticalImageText(
              image: TImages.shoeIcon,
              title: 'Shoes',
              onTap: (){},
            );
          }

      ),
    );
  }
}
