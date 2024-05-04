import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/size.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
    top: TSize.appBarHeight,
    right: TSize.defaultSpace,
    left: TSize.defaultSpace,
    bottom: TSize.defaultSpace,
  );
}
