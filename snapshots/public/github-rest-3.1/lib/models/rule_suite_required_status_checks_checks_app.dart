// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The GitHub App associated with the status check.
@immutable final class RuleSuiteRequiredStatusChecksChecksApp {const RuleSuiteRequiredStatusChecksChecksApp({this.id, this.slug, this.name, });

factory RuleSuiteRequiredStatusChecksChecksApp.fromJson(Map<String, dynamic> json) { return RuleSuiteRequiredStatusChecksChecksApp(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  slug: json['slug'] as String?,
  name: json['name'] as String?,
); }

/// The unique identifier of the GitHub App.
final int? id;

/// The slug of the GitHub App.
final String? slug;

/// The name of the GitHub App.
final String? name;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'slug': ?slug,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'slug', 'name'}.contains(key)); } 
RuleSuiteRequiredStatusChecksChecksApp copyWith({int Function()? id, String Function()? slug, String Function()? name, }) { return RuleSuiteRequiredStatusChecksChecksApp(
  id: id != null ? id() : this.id,
  slug: slug != null ? slug() : this.slug,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RuleSuiteRequiredStatusChecksChecksApp &&
          id == other.id &&
          slug == other.slug &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, slug, name); } 
@override String toString() { return 'RuleSuiteRequiredStatusChecksChecksApp(id: $id, slug: $slug, name: $name)'; } 
 }
