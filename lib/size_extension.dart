import 'responsive_size_util.dart';

extension SizeExtension on num {
  num get w => ResponsiveSize().setWidth(this);
  num get h => ResponsiveSize().setHeight(this);
  num get sp => ResponsiveSize().setSp(this);
  num get ssp => ResponsiveSize().setSp(this, allowFontScalingSelf: true);
  num get nsp => ResponsiveSize().setSp(this, allowFontScalingSelf: false);
  num get wp => ResponsiveSize.screenWidth * this;
  num get hp => ResponsiveSize.screenHeight * this;
}
