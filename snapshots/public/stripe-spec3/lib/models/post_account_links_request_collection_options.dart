// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountLinksRequestCollectionOptionsFields {const PostAccountLinksRequestCollectionOptionsFields._(this.value);

factory PostAccountLinksRequestCollectionOptionsFields.fromJson(String json) { return switch (json) {
  'currently_due' => currentlyDue,
  'eventually_due' => eventuallyDue,
  _ => PostAccountLinksRequestCollectionOptionsFields._(json),
}; }

static const PostAccountLinksRequestCollectionOptionsFields currentlyDue = PostAccountLinksRequestCollectionOptionsFields._('currently_due');

static const PostAccountLinksRequestCollectionOptionsFields eventuallyDue = PostAccountLinksRequestCollectionOptionsFields._('eventually_due');

static const List<PostAccountLinksRequestCollectionOptionsFields> values = [currentlyDue, eventuallyDue];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountLinksRequestCollectionOptionsFields && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountLinksRequestCollectionOptionsFields($value)'; } 
 }
@immutable final class PostAccountLinksRequestCollectionOptionsFutureRequirements {const PostAccountLinksRequestCollectionOptionsFutureRequirements._(this.value);

factory PostAccountLinksRequestCollectionOptionsFutureRequirements.fromJson(String json) { return switch (json) {
  'include' => include,
  'omit' => omit,
  _ => PostAccountLinksRequestCollectionOptionsFutureRequirements._(json),
}; }

static const PostAccountLinksRequestCollectionOptionsFutureRequirements include = PostAccountLinksRequestCollectionOptionsFutureRequirements._('include');

static const PostAccountLinksRequestCollectionOptionsFutureRequirements omit = PostAccountLinksRequestCollectionOptionsFutureRequirements._('omit');

static const List<PostAccountLinksRequestCollectionOptionsFutureRequirements> values = [include, omit];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountLinksRequestCollectionOptionsFutureRequirements && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountLinksRequestCollectionOptionsFutureRequirements($value)'; } 
 }
/// Specifies the requirements that Stripe collects from connected accounts in the Connect Onboarding flow.
@immutable final class PostAccountLinksRequestCollectionOptions {const PostAccountLinksRequestCollectionOptions({this.fields, this.futureRequirements, });

factory PostAccountLinksRequestCollectionOptions.fromJson(Map<String, dynamic> json) { return PostAccountLinksRequestCollectionOptions(
  fields: json['fields'] != null ? PostAccountLinksRequestCollectionOptionsFields.fromJson(json['fields'] as String) : null,
  futureRequirements: json['future_requirements'] != null ? PostAccountLinksRequestCollectionOptionsFutureRequirements.fromJson(json['future_requirements'] as String) : null,
); }

final PostAccountLinksRequestCollectionOptionsFields? fields;

final PostAccountLinksRequestCollectionOptionsFutureRequirements? futureRequirements;

Map<String, dynamic> toJson() { return {
  if (fields != null) 'fields': fields?.toJson(),
  if (futureRequirements != null) 'future_requirements': futureRequirements?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fields', 'future_requirements'}.contains(key)); } 
PostAccountLinksRequestCollectionOptions copyWith({PostAccountLinksRequestCollectionOptionsFields Function()? fields, PostAccountLinksRequestCollectionOptionsFutureRequirements Function()? futureRequirements, }) { return PostAccountLinksRequestCollectionOptions(
  fields: fields != null ? fields() : this.fields,
  futureRequirements: futureRequirements != null ? futureRequirements() : this.futureRequirements,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountLinksRequestCollectionOptions &&
          fields == other.fields &&
          futureRequirements == other.futureRequirements; } 
@override int get hashCode { return Object.hash(fields, futureRequirements); } 
@override String toString() { return 'PostAccountLinksRequestCollectionOptions(fields: $fields, futureRequirements: $futureRequirements)'; } 
 }
