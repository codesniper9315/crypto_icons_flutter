library crypto_icons_flutter;

import 'package:crypto_icons_flutter/cyprot_icon_style.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

/// A Calculator.
class CryptoIcons {
  static const String assetBaseUri = 'assets';

  static Widget loadAsset(
    String symbol,
    double size, [
    CryptoIconStyle style = CryptoIconStyle.color,
  ]) {
    String styleStr = EnumToString.convertToString(CryptoIconStyle.color);
    final uri = '$assetBaseUri/$styleStr/${symbol.toLowerCase()}.svg';

    return SvgPicture.asset(uri, width: size, height: size);
  }
}
