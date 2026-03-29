// GENERATED CODE - DO NOT MODIFY BY HAND

import 'brapi_post_snapshot_request_variant2_screenshot_options_clip.dart';final class BrapiPostSnapshotRequestVariant2ScreenshotOptionsType {const BrapiPostSnapshotRequestVariant2ScreenshotOptionsType._(this.value);

factory BrapiPostSnapshotRequestVariant2ScreenshotOptionsType.fromJson(String json) { return switch (json) {
  'png' => png,
  'jpeg' => jpeg,
  'webp' => webp,
  _ => BrapiPostSnapshotRequestVariant2ScreenshotOptionsType._(json),
}; }

static const BrapiPostSnapshotRequestVariant2ScreenshotOptionsType png = BrapiPostSnapshotRequestVariant2ScreenshotOptionsType._('png');

static const BrapiPostSnapshotRequestVariant2ScreenshotOptionsType jpeg = BrapiPostSnapshotRequestVariant2ScreenshotOptionsType._('jpeg');

static const BrapiPostSnapshotRequestVariant2ScreenshotOptionsType webp = BrapiPostSnapshotRequestVariant2ScreenshotOptionsType._('webp');

static const List<BrapiPostSnapshotRequestVariant2ScreenshotOptionsType> values = [png, jpeg, webp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostSnapshotRequestVariant2ScreenshotOptionsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostSnapshotRequestVariant2ScreenshotOptionsType($value)'; } 
 }
final class BrapiPostSnapshotRequestVariant2ScreenshotOptions {const BrapiPostSnapshotRequestVariant2ScreenshotOptions({this.captureBeyondViewport, this.clip, this.fromSurface, this.fullPage, this.omitBackground, this.optimizeForSpeed, this.quality, this.type = BrapiPostSnapshotRequestVariant2ScreenshotOptionsType.png, });

factory BrapiPostSnapshotRequestVariant2ScreenshotOptions.fromJson(Map<String, dynamic> json) { return BrapiPostSnapshotRequestVariant2ScreenshotOptions(
  captureBeyondViewport: json['captureBeyondViewport'] as bool?,
  clip: json['clip'] != null ? BrapiPostSnapshotRequestVariant2ScreenshotOptionsClip.fromJson(json['clip'] as Map<String, dynamic>) : null,
  fromSurface: json['fromSurface'] as bool?,
  fullPage: json['fullPage'] as bool?,
  omitBackground: json['omitBackground'] as bool?,
  optimizeForSpeed: json['optimizeForSpeed'] as bool?,
  quality: json['quality'] != null ? (json['quality'] as num).toDouble() : null,
  type: json.containsKey('type') ? BrapiPostSnapshotRequestVariant2ScreenshotOptionsType.fromJson(json['type'] as String) : BrapiPostSnapshotRequestVariant2ScreenshotOptionsType.png,
); }

final bool? captureBeyondViewport;

final BrapiPostSnapshotRequestVariant2ScreenshotOptionsClip? clip;

final bool? fromSurface;

final bool? fullPage;

final bool? omitBackground;

final bool? optimizeForSpeed;

final double? quality;

final BrapiPostSnapshotRequestVariant2ScreenshotOptionsType type;

Map<String, dynamic> toJson() { return {
  'captureBeyondViewport': ?captureBeyondViewport,
  if (clip != null) 'clip': clip?.toJson(),
  'fromSurface': ?fromSurface,
  'fullPage': ?fullPage,
  'omitBackground': ?omitBackground,
  'optimizeForSpeed': ?optimizeForSpeed,
  'quality': ?quality,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BrapiPostSnapshotRequestVariant2ScreenshotOptions copyWith({bool Function()? captureBeyondViewport, BrapiPostSnapshotRequestVariant2ScreenshotOptionsClip Function()? clip, bool Function()? fromSurface, bool Function()? fullPage, bool Function()? omitBackground, bool Function()? optimizeForSpeed, double Function()? quality, BrapiPostSnapshotRequestVariant2ScreenshotOptionsType Function()? type, }) { return BrapiPostSnapshotRequestVariant2ScreenshotOptions(
  captureBeyondViewport: captureBeyondViewport != null ? captureBeyondViewport() : this.captureBeyondViewport,
  clip: clip != null ? clip() : this.clip,
  fromSurface: fromSurface != null ? fromSurface() : this.fromSurface,
  fullPage: fullPage != null ? fullPage() : this.fullPage,
  omitBackground: omitBackground != null ? omitBackground() : this.omitBackground,
  optimizeForSpeed: optimizeForSpeed != null ? optimizeForSpeed() : this.optimizeForSpeed,
  quality: quality != null ? quality() : this.quality,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostSnapshotRequestVariant2ScreenshotOptions &&
          captureBeyondViewport == other.captureBeyondViewport &&
          clip == other.clip &&
          fromSurface == other.fromSurface &&
          fullPage == other.fullPage &&
          omitBackground == other.omitBackground &&
          optimizeForSpeed == other.optimizeForSpeed &&
          quality == other.quality &&
          type == other.type; } 
@override int get hashCode { return Object.hash(captureBeyondViewport, clip, fromSurface, fullPage, omitBackground, optimizeForSpeed, quality, type); } 
@override String toString() { return 'BrapiPostSnapshotRequestVariant2ScreenshotOptions(captureBeyondViewport: $captureBeyondViewport, clip: $clip, fromSurface: $fromSurface, fullPage: $fullPage, omitBackground: $omitBackground, optimizeForSpeed: $optimizeForSpeed, quality: $quality, type: $type)'; } 
 }
