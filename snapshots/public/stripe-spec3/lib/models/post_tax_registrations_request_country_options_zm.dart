// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsZmType {const PostTaxRegistrationsRequestCountryOptionsZmType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsZmType.fromJson(String json) { return switch (json) {
  'simplified' => simplified,
  _ => PostTaxRegistrationsRequestCountryOptionsZmType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsZmType simplified = PostTaxRegistrationsRequestCountryOptionsZmType._('simplified');

static const List<PostTaxRegistrationsRequestCountryOptionsZmType> values = [simplified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsZmType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsZmType($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsZm {const PostTaxRegistrationsRequestCountryOptionsZm({required this.type});

factory PostTaxRegistrationsRequestCountryOptionsZm.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsZm(
  type: PostTaxRegistrationsRequestCountryOptionsZmType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsZmType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsZm copyWith({PostTaxRegistrationsRequestCountryOptionsZmType? type}) { return PostTaxRegistrationsRequestCountryOptionsZm(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsZm &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsZm(type: $type)'; } 
 }
