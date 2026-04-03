// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_filters_components_schemas_id.dart';/// The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
extension type const FirewallExpression(String value) {
factory FirewallExpression.fromJson(String json) => FirewallExpression(json);

String toJson() => value;

}
/// An informative summary of the filter.
extension type const FirewallFiltersComponentsSchemasDescription(String value) {
factory FirewallFiltersComponentsSchemasDescription.fromJson(String json) => FirewallFiltersComponentsSchemasDescription(json);

String toJson() => value;

}
/// When true, indicates that the filter is currently paused.
extension type const FirewallFiltersComponentsSchemasPaused(bool value) {
factory FirewallFiltersComponentsSchemasPaused.fromJson(bool json) => FirewallFiltersComponentsSchemasPaused(json);

bool toJson() => value;

}
/// A short reference tag. Allows you to select related filters.
extension type const FirewallSchemasRef(String value) {
factory FirewallSchemasRef.fromJson(String json) => FirewallSchemasRef(json);

String toJson() => value;

}
@immutable final class FirewallFilter {const FirewallFilter({this.description, this.expression, this.id, this.paused, this.ref, });

factory FirewallFilter.fromJson(Map<String, dynamic> json) { return FirewallFilter(
  description: json['description'] != null ? FirewallFiltersComponentsSchemasDescription.fromJson(json['description'] as String) : null,
  expression: json['expression'] != null ? FirewallExpression.fromJson(json['expression'] as String) : null,
  id: json['id'] != null ? FirewallFiltersComponentsSchemasId.fromJson(json['id'] as String) : null,
  paused: json['paused'] != null ? FirewallFiltersComponentsSchemasPaused.fromJson(json['paused'] as bool) : null,
  ref: json['ref'] != null ? FirewallSchemasRef.fromJson(json['ref'] as String) : null,
); }

final FirewallFiltersComponentsSchemasDescription? description;

/// The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
final FirewallExpression? expression;

final FirewallFiltersComponentsSchemasId? id;

final FirewallFiltersComponentsSchemasPaused? paused;

final FirewallSchemasRef? ref;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  if (expression != null) 'expression': expression?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (paused != null) 'paused': paused?.toJson(),
  if (ref != null) 'ref': ref?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'expression', 'id', 'paused', 'ref'}.contains(key)); } 
FirewallFilter copyWith({FirewallFiltersComponentsSchemasDescription Function()? description, FirewallExpression Function()? expression, FirewallFiltersComponentsSchemasId Function()? id, FirewallFiltersComponentsSchemasPaused Function()? paused, FirewallSchemasRef Function()? ref, }) { return FirewallFilter(
  description: description != null ? description() : this.description,
  expression: expression != null ? expression() : this.expression,
  id: id != null ? id() : this.id,
  paused: paused != null ? paused() : this.paused,
  ref: ref != null ? ref() : this.ref,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallFilter &&
          description == other.description &&
          expression == other.expression &&
          id == other.id &&
          paused == other.paused &&
          ref == other.ref; } 
@override int get hashCode { return Object.hash(description, expression, id, paused, ref); } 
@override String toString() { return 'FirewallFilter(description: $description, expression: $expression, id: $id, paused: $paused, ref: $ref)'; } 
 }
