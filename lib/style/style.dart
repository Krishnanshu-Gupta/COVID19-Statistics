import 'dart:ui';

class Maincolors{


  Color maincolor = HexColor("250f30");
  Color seccolor = HexColor("dd515d");
  Color facebook = HexColor("1778F2");
  Color twitter = HexColor("55ACEE");
  Color instagram = HexColor("E1306C");
}


class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}