// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsTwType {const PostTaxRegistrationsRequestCountryOptionsTwType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsTwType.fromJson(String json) { return switch (json) {
  'simplified' => simplified,
  _ => PostTaxRegistrationsRequestCountryOptionsTwType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsTwType simplified = PostTaxRegistrationsRequestCountryOptionsTwType._('simplified');

static const List<PostTaxRegistrationsRequestCountryOptionsTwType> values = [simplified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsTwType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsTwType($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsTw {const PostTaxRegistrationsRequestCountryOptionsTw({required this.type});

factory PostTaxRegistrationsRequestCountryOptionsTw.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsTw(
  type: PostTaxRegistrationsRequestCountryOptionsTwType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsTwType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsTw copyWith({PostTaxRegistrationsRequestCountryOptionsTwType? type}) { return PostTaxRegistrationsRequestCountryOptionsTw(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsTw &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsTw(type: $type)'; } 
 }
