import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/size.dart';

import '../../constants/colors.dart';

class TCheckBoxTheme{
   TCheckBoxTheme._();
  /// light CheckBoX Theme
   static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
     checkColor: MaterialStateProperty.resolveWith((states)  {
       if(states.contains(MaterialState.selected)){
         return TColors.white;
       }else{
         return TColors.black;
       }
     }),
     fillColor: MaterialStateProperty.resolveWith((states)  {
       if(states.contains(MaterialState.selected)){
         return TColors.primary;
       }else{
         return Colors.transparent;
       }
     }),
   );

   /// Dark CheckBoX Theme


   static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSize.xs)),
     checkColor: MaterialStateProperty.resolveWith((states)  {
       if(states.contains(MaterialState.selected)){
         return TColors.white;
       }else{
         return TColors.black;
       }
     }),
     fillColor: MaterialStateProperty.resolveWith((states)  {
       if(states.contains(MaterialState.selected)){
         return TColors.primary;
       }else{
         return Colors.transparent;
       }
     }),
   );

}