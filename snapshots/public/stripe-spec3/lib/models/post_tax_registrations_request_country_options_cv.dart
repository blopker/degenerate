// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsCvType {const PostTaxRegistrationsRequestCountryOptionsCvType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsCvType.fromJson(String json) { return switch (json) {
  'simplified' => simplified,
  _ => PostTaxRegistrationsRequestCountryOptionsCvType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsCvType simplified = PostTaxRegistrationsRequestCountryOptionsCvType._('simplified');

static const List<PostTaxRegistrationsRequestCountryOptionsCvType> values = [simplified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsCvType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsCvType($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsCv {const PostTaxRegistrationsRequestCountryOptionsCv({required this.type});

factory PostTaxRegistrationsRequestCountryOptionsCv.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsCv(
  type: PostTaxRegistrationsRequestCountryOptionsCvType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsCvType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsCv copyWith({PostTaxRegistrationsRequestCountryOptionsCvType? type}) { return PostTaxRegistrationsRequestCountryOptionsCv(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsCv &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsCv(type: $type)'; } 
 }
