// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class VideoModelVariant2 {const VideoModelVariant2._(this.value);

factory VideoModelVariant2.fromJson(String json) { return switch (json) {
  'sora-2' => sora2,
  'sora-2-pro' => sora2Pro,
  'sora-2-2025-10-06' => sora220251006,
  'sora-2-pro-2025-10-06' => sora2Pro20251006,
  'sora-2-2025-12-08' => sora220251208,
  _ => VideoModelVariant2._(json),
}; }

static const VideoModelVariant2 sora2 = VideoModelVariant2._('sora-2');

static const VideoModelVariant2 sora2Pro = VideoModelVariant2._('sora-2-pro');

static const VideoModelVariant2 sora220251006 = VideoModelVariant2._('sora-2-2025-10-06');

static const VideoModelVariant2 sora2Pro20251006 = VideoModelVariant2._('sora-2-pro-2025-10-06');

static const VideoModelVariant2 sora220251208 = VideoModelVariant2._('sora-2-2025-12-08');

static const List<VideoModelVariant2> values = [sora2, sora2Pro, sora220251006, sora2Pro20251006, sora220251208];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is VideoModelVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'VideoModelVariant2($value)'; } 
 }

@immutable
final class VideoModel {
  const VideoModel({this.string = const Omittable.absent(),
this.videoModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const VideoModel._({required this.rawValue, required this.string,
required this.videoModelVariant2,});
  factory VideoModel.fromJson(Object? json) => VideoModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
videoModelVariant2: parseAnyOfVariant<VideoModelVariant2>(json, (value) => VideoModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<VideoModelVariant2> videoModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || videoModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (videoModelVariant2.isPresent) videoModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is VideoModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'VideoModel(${toJson()})';
}
