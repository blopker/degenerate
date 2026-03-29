// GENERATED CODE - DO NOT MODIFY BY HAND

/// Check [options](https://pptr.dev/api/puppeteer.page.setviewport).
final class BrapiPostLinksRequestVariant1Viewport {const BrapiPostLinksRequestVariant1Viewport({this.deviceScaleFactor, this.hasTouch, required this.height, this.isLandscape, this.isMobile, required this.width, });

factory BrapiPostLinksRequestVariant1Viewport.fromJson(Map<String, dynamic> json) { return BrapiPostLinksRequestVariant1Viewport(
  deviceScaleFactor: json['deviceScaleFactor'] != null ? (json['deviceScaleFactor'] as num).toDouble() : null,
  hasTouch: json['hasTouch'] as bool?,
  height: (json['height'] as num).toDouble(),
  isLandscape: json['isLandscape'] as bool?,
  isMobile: json['isMobile'] as bool?,
  width: (json['width'] as num).toDouble(),
); }

final double? deviceScaleFactor;

final bool? hasTouch;

final double height;

final bool? isLandscape;

final bool? isMobile;

final double width;

Map<String, dynamic> toJson() { return {
  'deviceScaleFactor': ?deviceScaleFactor,
  'hasTouch': ?hasTouch,
  'height': height,
  'isLandscape': ?isLandscape,
  'isMobile': ?isMobile,
  'width': width,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('height') && json['height'] is num &&
      json.containsKey('width') && json['width'] is num; } 
BrapiPostLinksRequestVariant1Viewport copyWith({double Function()? deviceScaleFactor, bool Function()? hasTouch, double? height, bool Function()? isLandscape, bool Function()? isMobile, double? width, }) { return BrapiPostLinksRequestVariant1Viewport(
  deviceScaleFactor: deviceScaleFactor != null ? deviceScaleFactor() : this.deviceScaleFactor,
  hasTouch: hasTouch != null ? hasTouch() : this.hasTouch,
  height: height ?? this.height,
  isLandscape: isLandscape != null ? isLandscape() : this.isLandscape,
  isMobile: isMobile != null ? isMobile() : this.isMobile,
  width: width ?? this.width,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostLinksRequestVariant1Viewport &&
          deviceScaleFactor == other.deviceScaleFactor &&
          hasTouch == other.hasTouch &&
          height == other.height &&
          isLandscape == other.isLandscape &&
          isMobile == other.isMobile &&
          width == other.width; } 
@override int get hashCode { return Object.hash(deviceScaleFactor, hasTouch, height, isLandscape, isMobile, width); } 
@override String toString() { return 'BrapiPostLinksRequestVariant1Viewport(deviceScaleFactor: $deviceScaleFactor, hasTouch: $hasTouch, height: $height, isLandscape: $isLandscape, isMobile: $isMobile, width: $width)'; } 
 }
