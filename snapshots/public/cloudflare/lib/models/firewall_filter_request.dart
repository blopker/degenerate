// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_expression.dart';import 'firewall_filters_components_schemas_description.dart';import 'firewall_filters_components_schemas_paused.dart';import 'firewall_schemas_ref.dart';@immutable final class FirewallFilterRequest {const FirewallFilterRequest({this.description, this.expression, this.paused, this.ref, });

factory FirewallFilterRequest.fromJson(Map<String, dynamic> json) { return FirewallFilterRequest(
  description: json['description'] != null ? FirewallFiltersComponentsSchemasDescription.fromJson(json['description'] as String) : null,
  expression: json['expression'] != null ? FirewallExpression.fromJson(json['expression'] as String) : null,
  paused: json['paused'] != null ? FirewallFiltersComponentsSchemasPaused.fromJson(json['paused'] as bool) : null,
  ref: json['ref'] != null ? FirewallSchemasRef.fromJson(json['ref'] as String) : null,
); }

/// An informative summary of the filter.
final FirewallFiltersComponentsSchemasDescription? description;

/// The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
final FirewallExpression? expression;

/// When true, indicates that the filter is currently paused.
final FirewallFiltersComponentsSchemasPaused? paused;

/// A short reference tag. Allows you to select related filters.
final FirewallSchemasRef? ref;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  if (expression != null) 'expression': expression?.toJson(),
  if (paused != null) 'paused': paused?.toJson(),
  if (ref != null) 'ref': ref?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'expression', 'paused', 'ref'}.contains(key)); } 
FirewallFilterRequest copyWith({FirewallFiltersComponentsSchemasDescription? Function()? description, FirewallExpression? Function()? expression, FirewallFiltersComponentsSchemasPaused? Function()? paused, FirewallSchemasRef? Function()? ref, }) { return FirewallFilterRequest(
  description: description != null ? description() : this.description,
  expression: expression != null ? expression() : this.expression,
  paused: paused != null ? paused() : this.paused,
  ref: ref != null ? ref() : this.ref,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallFilterRequest &&
          description == other.description &&
          expression == other.expression &&
          paused == other.paused &&
          ref == other.ref; } 
@override int get hashCode { return Object.hash(description, expression, paused, ref); } 
@override String toString() { return 'FirewallFilterRequest(description: $description, expression: $expression, paused: $paused, ref: $ref)'; } 
 }
