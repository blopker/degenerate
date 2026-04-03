// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsLkType {const PostTaxRegistrationsRequestCountryOptionsLkType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsLkType.fromJson(String json) { return switch (json) {
  'simplified' => simplified,
  _ => PostTaxRegistrationsRequestCountryOptionsLkType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsLkType simplified = PostTaxRegistrationsRequestCountryOptionsLkType._('simplified');

static const List<PostTaxRegistrationsRequestCountryOptionsLkType> values = [simplified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsLkType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsLkType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsLk {const PostTaxRegistrationsRequestCountryOptionsLk({required this.type});

factory PostTaxRegistrationsRequestCountryOptionsLk.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsLk(
  type: PostTaxRegistrationsRequestCountryOptionsLkType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsLkType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsLk copyWith({PostTaxRegistrationsRequestCountryOptionsLkType? type}) { return PostTaxRegistrationsRequestCountryOptionsLk(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsLk &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsLk(type: $type)'; } 
 }
