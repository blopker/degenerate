// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsMxType {const PostTaxRegistrationsRequestCountryOptionsMxType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsMxType.fromJson(String json) { return switch (json) {
  'simplified' => simplified,
  _ => PostTaxRegistrationsRequestCountryOptionsMxType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsMxType simplified = PostTaxRegistrationsRequestCountryOptionsMxType._('simplified');

static const List<PostTaxRegistrationsRequestCountryOptionsMxType> values = [simplified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsMxType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsMxType($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsMx {const PostTaxRegistrationsRequestCountryOptionsMx({required this.type});

factory PostTaxRegistrationsRequestCountryOptionsMx.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsMx(
  type: PostTaxRegistrationsRequestCountryOptionsMxType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsMxType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsMx copyWith({PostTaxRegistrationsRequestCountryOptionsMxType? type}) { return PostTaxRegistrationsRequestCountryOptionsMx(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsMx &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsMx(type: $type)'; } 
 }
