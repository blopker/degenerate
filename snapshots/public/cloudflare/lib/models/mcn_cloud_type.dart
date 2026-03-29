// GENERATED CODE - DO NOT MODIFY BY HAND

final class McnCloudType {const McnCloudType._(this.value);

factory McnCloudType.fromJson(String json) { return switch (json) {
  'AWS' => aws,
  'AZURE' => azure,
  'GOOGLE' => google,
  'CLOUDFLARE' => cloudflare,
  _ => McnCloudType._(json),
}; }

static const McnCloudType aws = McnCloudType._('AWS');

static const McnCloudType azure = McnCloudType._('AZURE');

static const McnCloudType google = McnCloudType._('GOOGLE');

static const McnCloudType cloudflare = McnCloudType._('CLOUDFLARE');

static const List<McnCloudType> values = [aws, azure, google, cloudflare];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is McnCloudType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'McnCloudType($value)'; } 
 }
