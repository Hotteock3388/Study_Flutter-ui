import 'dart:ui';

import 'package:dataclass/dataclass.dart';

@dataClass
class BrandData {
  final String imgLink, name, explain, bottomText;
  final Color boxColor, chipColor;

  BrandData(this.imgLink, this.name, this.explain, this.bottomText,
      this.boxColor, this.chipColor);
}
