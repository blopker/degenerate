// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_screenshot_request_variant1_screenshot_options_clip.dart';@immutable final class BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding {const BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding._(this.value);

factory BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding.fromJson(String json) {return switch (json) {
  'binary' => binary,
  'base64' => base64,
  _ => BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding._(json),
};}

static const BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding binary = BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding._('binary');

static const BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding base64 = BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding._('base64');

static const List<BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding> values = [binary, base64];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding($value)';}
}
@immutable final class BrapiPostScreenshotRequestVariant1ScreenshotOptionsType {const BrapiPostScreenshotRequestVariant1ScreenshotOptionsType._(this.value);

factory BrapiPostScreenshotRequestVariant1ScreenshotOptionsType.fromJson(String json) {return switch (json) {
  'png' => png,
  'jpeg' => jpeg,
  'webp' => webp,
  _ => BrapiPostScreenshotRequestVariant1ScreenshotOptionsType._(json),
};}

static const BrapiPostScreenshotRequestVariant1ScreenshotOptionsType png = BrapiPostScreenshotRequestVariant1ScreenshotOptionsType._('png');

static const BrapiPostScreenshotRequestVariant1ScreenshotOptionsType jpeg = BrapiPostScreenshotRequestVariant1ScreenshotOptionsType._('jpeg');

static const BrapiPostScreenshotRequestVariant1ScreenshotOptionsType webp = BrapiPostScreenshotRequestVariant1ScreenshotOptionsType._('webp');

static const List<BrapiPostScreenshotRequestVariant1ScreenshotOptionsType> values = [png, jpeg, webp];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is BrapiPostScreenshotRequestVariant1ScreenshotOptionsType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'BrapiPostScreenshotRequestVariant1ScreenshotOptionsType($value)';}
}
/// Check [options](https://pptr.dev/api/puppeteer.screenshotoptions).
@immutable final class BrapiPostScreenshotRequestVariant1ScreenshotOptions {const BrapiPostScreenshotRequestVariant1ScreenshotOptions({this.captureBeyondViewport, this.clip, this.encoding, this.fromSurface, this.fullPage, this.omitBackground, this.optimizeForSpeed, this.quality, this.type, });

factory BrapiPostScreenshotRequestVariant1ScreenshotOptions.fromJson(Map<String, dynamic> json) {return BrapiPostScreenshotRequestVariant1ScreenshotOptions(
  captureBeyondViewport: json['captureBeyondViewport'] as bool?,
  clip: json['clip'] != null ? BrapiPostScreenshotRequestVariant1ScreenshotOptionsClip.fromJson(json['clip'] as Map<String, dynamic>) : null,
  encoding: json['encoding'] != null ? BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding.fromJson(json['encoding'] as String) : null,
  fromSurface: json['fromSurface'] as bool?,
  fullPage: json['fullPage'] as bool?,
  omitBackground: json['omitBackground'] as bool?,
  optimizeForSpeed: json['optimizeForSpeed'] as bool?,
  quality: json['quality'] != null ? (json['quality'] as num).toDouble() : null,
  type: json['type'] != null ? BrapiPostScreenshotRequestVariant1ScreenshotOptionsType.fromJson(json['type'] as String) : null,
);}

final bool? captureBeyondViewport;

final BrapiPostScreenshotRequestVariant1ScreenshotOptionsClip? clip;

final BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding? encoding;

final bool? fromSurface;

final bool? fullPage;

final bool? omitBackground;

final bool? optimizeForSpeed;

final double? quality;

final BrapiPostScreenshotRequestVariant1ScreenshotOptionsType? type;

/// The value with the schema default applied when absent.
BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding get encodingOrDefault {return encoding ?? BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding.fromJson('binary');}
/// The value with the schema default applied when absent.
BrapiPostScreenshotRequestVariant1ScreenshotOptionsType get typeOrDefault {return type ?? BrapiPostScreenshotRequestVariant1ScreenshotOptionsType.fromJson('png');}
Map<String, dynamic> toJson() {return {
  'captureBeyondViewport': ?captureBeyondViewport,
  if (clip != null) 'clip': clip?.toJson(),
  if (encoding != null) 'encoding': encoding?.toJson(),
  'fromSurface': ?fromSurface,
  'fullPage': ?fullPage,
  'omitBackground': ?omitBackground,
  'optimizeForSpeed': ?optimizeForSpeed,
  'quality': ?quality,
  if (type != null) 'type': type?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'captureBeyondViewport', 'clip', 'encoding', 'fromSurface', 'fullPage', 'omitBackground', 'optimizeForSpeed', 'quality', 'type'}.contains(key));}
BrapiPostScreenshotRequestVariant1ScreenshotOptions copyWith({bool? Function()? captureBeyondViewport, BrapiPostScreenshotRequestVariant1ScreenshotOptionsClip? Function()? clip, BrapiPostScreenshotRequestVariant1ScreenshotOptionsEncoding? Function()? encoding, bool? Function()? fromSurface, bool? Function()? fullPage, bool? Function()? omitBackground, bool? Function()? optimizeForSpeed, double? Function()? quality, BrapiPostScreenshotRequestVariant1ScreenshotOptionsType? Function()? type, }) {return BrapiPostScreenshotRequestVariant1ScreenshotOptions(
  captureBeyondViewport: captureBeyondViewport != null ? captureBeyondViewport() : this.captureBeyondViewport,
  clip: clip != null ? clip() : this.clip,
  encoding: encoding != null ? encoding() : this.encoding,
  fromSurface: fromSurface != null ? fromSurface() : this.fromSurface,
  fullPage: fullPage != null ? fullPage() : this.fullPage,
  omitBackground: omitBackground != null ? omitBackground() : this.omitBackground,
  optimizeForSpeed: optimizeForSpeed != null ? optimizeForSpeed() : this.optimizeForSpeed,
  quality: quality != null ? quality() : this.quality,
  type: type != null ? type() : this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is BrapiPostScreenshotRequestVariant1ScreenshotOptions &&
          captureBeyondViewport == other.captureBeyondViewport &&
          clip == other.clip &&
          encoding == other.encoding &&
          fromSurface == other.fromSurface &&
          fullPage == other.fullPage &&
          omitBackground == other.omitBackground &&
          optimizeForSpeed == other.optimizeForSpeed &&
          quality == other.quality &&
          type == other.type;}
@override int get hashCode {return Object.hash(captureBeyondViewport, clip, encoding, fromSurface, fullPage, omitBackground, optimizeForSpeed, quality, type);}
@override String toString() {return 'BrapiPostScreenshotRequestVariant1ScreenshotOptions(captureBeyondViewport: $captureBeyondViewport, clip: $clip, encoding: $encoding, fromSurface: $fromSurface, fullPage: $fullPage, omitBackground: $omitBackground, optimizeForSpeed: $optimizeForSpeed, quality: $quality, type: $type)';}
}
