// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_components_schemas_paused.dart';import 'firewall_components_schemas_priority.dart';import 'firewall_deleted_filter.dart';import 'firewall_filter.dart';import 'firewall_filter_rule_response_filter.dart';import 'firewall_firewall_rules_components_schemas_description.dart';import 'firewall_firewall_rules_components_schemas_id.dart';import 'firewall_products2.dart';import 'firewall_ref.dart';import 'firewall_schemas_action.dart';final class FirewallFilterRuleResponse {const FirewallFilterRuleResponse({this.action, this.description, this.id, this.paused, this.priority, this.products, this.ref, this.filter, });

factory FirewallFilterRuleResponse.fromJson(Map<String, dynamic> json) { return FirewallFilterRuleResponse(
  action: json['action'] != null ? FirewallSchemasAction.fromJson(json['action'] as String) : null,
  description: json['description'] != null ? FirewallFirewallRulesComponentsSchemasDescription.fromJson(json['description'] as String) : null,
  id: json['id'] != null ? FirewallFirewallRulesComponentsSchemasId.fromJson(json['id'] as String) : null,
  paused: json['paused'] != null ? FirewallComponentsSchemasPaused.fromJson(json['paused'] as bool) : null,
  priority: json['priority'] != null ? FirewallComponentsSchemasPriority.fromJson(json['priority'] as num) : null,
  products: (json['products'] as List<dynamic>?)?.map((e) => FirewallProducts2.fromJson(e as String)).toList(),
  ref: json['ref'] != null ? FirewallRef.fromJson(json['ref'] as String) : null,
  filter: json['filter'] != null ? OneOf2.parse(json['filter'], fromA: (v) => FirewallFilter.fromJson(v as Map<String, dynamic>), fromB: (v) => FirewallDeletedFilter.fromJson(v as Map<String, dynamic>),) : null,
); }

final FirewallSchemasAction? action;

final FirewallFirewallRulesComponentsSchemasDescription? description;

final FirewallFirewallRulesComponentsSchemasId? id;

/// When true, indicates that the firewall rule is currently paused.
final FirewallComponentsSchemasPaused? paused;

/// The priority of the rule. Optional value used to define the processing order. A lower number indicates a higher priority. If not provided, rules with a defined priority will be processed before rules without a priority.
final FirewallComponentsSchemasPriority? priority;

final List<FirewallProducts2>? products;

final FirewallRef? ref;

final FirewallFilterRuleResponseFilter? filter;

Map<String, dynamic> toJson() { return {
  if (action != null) 'action': action?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (paused != null) 'paused': paused?.toJson(),
  if (priority != null) 'priority': priority?.toJson(),
  if (products != null) 'products': products?.map((e) => e.toJson()).toList(),
  if (ref != null) 'ref': ref?.toJson(),
  if (filter != null) 'filter': filter?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'action', 'description', 'id', 'paused', 'priority', 'products', 'ref', 'filter'}.contains(key)); } 
FirewallFilterRuleResponse copyWith({FirewallSchemasAction Function()? action, FirewallFirewallRulesComponentsSchemasDescription Function()? description, FirewallFirewallRulesComponentsSchemasId Function()? id, FirewallComponentsSchemasPaused Function()? paused, FirewallComponentsSchemasPriority Function()? priority, List<FirewallProducts2> Function()? products, FirewallRef Function()? ref, FirewallFilterRuleResponseFilter Function()? filter, }) { return FirewallFilterRuleResponse(
  action: action != null ? action() : this.action,
  description: description != null ? description() : this.description,
  id: id != null ? id() : this.id,
  paused: paused != null ? paused() : this.paused,
  priority: priority != null ? priority() : this.priority,
  products: products != null ? products() : this.products,
  ref: ref != null ? ref() : this.ref,
  filter: filter != null ? filter() : this.filter,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallFilterRuleResponse &&
          action == other.action &&
          description == other.description &&
          id == other.id &&
          paused == other.paused &&
          priority == other.priority &&
          listEquals(products, other.products) &&
          ref == other.ref &&
          filter == other.filter; } 
@override int get hashCode { return Object.hash(action, description, id, paused, priority, Object.hashAll(products ?? const []), ref, filter); } 
@override String toString() { return 'FirewallFilterRuleResponse(action: $action, description: $description, id: $id, paused: $paused, priority: $priority, products: $products, ref: $ref, filter: $filter)'; } 
 }
