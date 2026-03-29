// GENERATED CODE - DO NOT MODIFY BY HAND

final class ImageDetail {const ImageDetail._(this.value);

factory ImageDetail.fromJson(String json) { return switch (json) {
  'low' => low,
  'high' => high,
  'auto' => auto,
  'original' => original,
  _ => ImageDetail._(json),
}; }

static const ImageDetail low = ImageDetail._('low');

static const ImageDetail high = ImageDetail._('high');

static const ImageDetail auto = ImageDetail._('auto');

static const ImageDetail original = ImageDetail._('original');

static const List<ImageDetail> values = [low, high, auto, original];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ImageDetail && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ImageDetail($value)'; } 
 }
