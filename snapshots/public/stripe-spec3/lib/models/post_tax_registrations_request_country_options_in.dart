// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsInType {const PostTaxRegistrationsRequestCountryOptionsInType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsInType.fromJson(String json) { return switch (json) {
  'simplified' => simplified,
  _ => PostTaxRegistrationsRequestCountryOptionsInType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsInType simplified = PostTaxRegistrationsRequestCountryOptionsInType._('simplified');

static const List<PostTaxRegistrationsRequestCountryOptionsInType> values = [simplified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsInType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsInType($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsIn {const PostTaxRegistrationsRequestCountryOptionsIn({required this.type});

factory PostTaxRegistrationsRequestCountryOptionsIn.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsIn(
  type: PostTaxRegistrationsRequestCountryOptionsInType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsInType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsIn copyWith({PostTaxRegistrationsRequestCountryOptionsInType? type}) { return PostTaxRegistrationsRequestCountryOptionsIn(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsIn &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsIn(type: $type)'; } 
 }
