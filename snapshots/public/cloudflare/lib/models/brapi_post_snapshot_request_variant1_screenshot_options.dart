// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_snapshot_request_variant1_screenshot_options_clip.dart';@immutable final class BrapiPostSnapshotRequestVariant1ScreenshotOptionsType {const BrapiPostSnapshotRequestVariant1ScreenshotOptionsType._(this.value);

factory BrapiPostSnapshotRequestVariant1ScreenshotOptionsType.fromJson(String json) { return switch (json) {
  'png' => png,
  'jpeg' => jpeg,
  'webp' => webp,
  _ => BrapiPostSnapshotRequestVariant1ScreenshotOptionsType._(json),
}; }

static const BrapiPostSnapshotRequestVariant1ScreenshotOptionsType png = BrapiPostSnapshotRequestVariant1ScreenshotOptionsType._('png');

static const BrapiPostSnapshotRequestVariant1ScreenshotOptionsType jpeg = BrapiPostSnapshotRequestVariant1ScreenshotOptionsType._('jpeg');

static const BrapiPostSnapshotRequestVariant1ScreenshotOptionsType webp = BrapiPostSnapshotRequestVariant1ScreenshotOptionsType._('webp');

static const List<BrapiPostSnapshotRequestVariant1ScreenshotOptionsType> values = [png, jpeg, webp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostSnapshotRequestVariant1ScreenshotOptionsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostSnapshotRequestVariant1ScreenshotOptionsType($value)'; } 
 }
@immutable final class BrapiPostSnapshotRequestVariant1ScreenshotOptions {const BrapiPostSnapshotRequestVariant1ScreenshotOptions({this.captureBeyondViewport, this.clip, this.fromSurface, this.fullPage, this.omitBackground, this.optimizeForSpeed, this.quality, this.type = BrapiPostSnapshotRequestVariant1ScreenshotOptionsType.png, });

factory BrapiPostSnapshotRequestVariant1ScreenshotOptions.fromJson(Map<String, dynamic> json) { return BrapiPostSnapshotRequestVariant1ScreenshotOptions(
  captureBeyondViewport: json['captureBeyondViewport'] as bool?,
  clip: json['clip'] != null ? BrapiPostSnapshotRequestVariant1ScreenshotOptionsClip.fromJson(json['clip'] as Map<String, dynamic>) : null,
  fromSurface: json['fromSurface'] as bool?,
  fullPage: json['fullPage'] as bool?,
  omitBackground: json['omitBackground'] as bool?,
  optimizeForSpeed: json['optimizeForSpeed'] as bool?,
  quality: json['quality'] != null ? (json['quality'] as num).toDouble() : null,
  type: json.containsKey('type') ? BrapiPostSnapshotRequestVariant1ScreenshotOptionsType.fromJson(json['type'] as String) : BrapiPostSnapshotRequestVariant1ScreenshotOptionsType.png,
); }

final bool? captureBeyondViewport;

final BrapiPostSnapshotRequestVariant1ScreenshotOptionsClip? clip;

final bool? fromSurface;

final bool? fullPage;

final bool? omitBackground;

final bool? optimizeForSpeed;

final double? quality;

final BrapiPostSnapshotRequestVariant1ScreenshotOptionsType type;

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
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'captureBeyondViewport', 'clip', 'fromSurface', 'fullPage', 'omitBackground', 'optimizeForSpeed', 'quality', 'type'}.contains(key)); } 
BrapiPostSnapshotRequestVariant1ScreenshotOptions copyWith({bool Function()? captureBeyondViewport, BrapiPostSnapshotRequestVariant1ScreenshotOptionsClip Function()? clip, bool Function()? fromSurface, bool Function()? fullPage, bool Function()? omitBackground, bool Function()? optimizeForSpeed, double Function()? quality, BrapiPostSnapshotRequestVariant1ScreenshotOptionsType Function()? type, }) { return BrapiPostSnapshotRequestVariant1ScreenshotOptions(
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
      other is BrapiPostSnapshotRequestVariant1ScreenshotOptions &&
          captureBeyondViewport == other.captureBeyondViewport &&
          clip == other.clip &&
          fromSurface == other.fromSurface &&
          fullPage == other.fullPage &&
          omitBackground == other.omitBackground &&
          optimizeForSpeed == other.optimizeForSpeed &&
          quality == other.quality &&
          type == other.type; } 
@override int get hashCode { return Object.hash(captureBeyondViewport, clip, fromSurface, fullPage, omitBackground, optimizeForSpeed, quality, type); } 
@override String toString() { return 'BrapiPostSnapshotRequestVariant1ScreenshotOptions(captureBeyondViewport: $captureBeyondViewport, clip: $clip, fromSurface: $fromSurface, fullPage: $fullPage, omitBackground: $omitBackground, optimizeForSpeed: $optimizeForSpeed, quality: $quality, type: $type)'; } 
 }
