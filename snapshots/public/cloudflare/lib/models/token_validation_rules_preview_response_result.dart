// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_host.dart';import 'token_validation_rules_preview_response_result_operations.dart';@immutable final class TokenValidationRulesPreviewResponseResult {const TokenValidationRulesPreviewResponseResult({this.availableHosts, this.excluded, this.ignored, this.included, this.operations, this.selectedHosts, this.total, });

factory TokenValidationRulesPreviewResponseResult.fromJson(Map<String, dynamic> json) { return TokenValidationRulesPreviewResponseResult(
  availableHosts: (json['available_hosts'] as List<dynamic>?)?.map((e) => ShieldHost.fromJson(e as String)).toList(),
  excluded: json['excluded'] != null ? (json['excluded'] as num).toInt() : null,
  ignored: json['ignored'] != null ? (json['ignored'] as num).toInt() : null,
  included: json['included'] != null ? (json['included'] as num).toInt() : null,
  operations: (json['operations'] as List<dynamic>?)?.map((e) => TokenValidationRulesPreviewResponseResultOperations.fromJson(e as Map<String, dynamic>)).toList(),
  selectedHosts: (json['selected_hosts'] as List<dynamic>?)?.map((e) => ShieldHost.fromJson(e as String)).toList(),
  total: json['total'] != null ? (json['total'] as num).toInt() : null,
); }

/// All hostnames on zone used by operations
final List<ShieldHost>? availableHosts;

/// Number of operations with `excluded` `state`
final int? excluded;

/// Number of operations with `ignored` `state`
final int? ignored;

/// Number of operations with `included` `state`
final int? included;

final List<TokenValidationRulesPreviewResponseResultOperations>? operations;

/// Hostnames of `included` operations
final List<ShieldHost>? selectedHosts;

/// Number of operations on zone
final int? total;

Map<String, dynamic> toJson() { return {
  if (availableHosts != null) 'available_hosts': availableHosts?.map((e) => e.toJson()).toList(),
  'excluded': ?excluded,
  'ignored': ?ignored,
  'included': ?included,
  if (operations != null) 'operations': operations?.map((e) => e.toJson()).toList(),
  if (selectedHosts != null) 'selected_hosts': selectedHosts?.map((e) => e.toJson()).toList(),
  'total': ?total,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'available_hosts', 'excluded', 'ignored', 'included', 'operations', 'selected_hosts', 'total'}.contains(key)); } 
TokenValidationRulesPreviewResponseResult copyWith({List<ShieldHost> Function()? availableHosts, int Function()? excluded, int Function()? ignored, int Function()? included, List<TokenValidationRulesPreviewResponseResultOperations> Function()? operations, List<ShieldHost> Function()? selectedHosts, int Function()? total, }) { return TokenValidationRulesPreviewResponseResult(
  availableHosts: availableHosts != null ? availableHosts() : this.availableHosts,
  excluded: excluded != null ? excluded() : this.excluded,
  ignored: ignored != null ? ignored() : this.ignored,
  included: included != null ? included() : this.included,
  operations: operations != null ? operations() : this.operations,
  selectedHosts: selectedHosts != null ? selectedHosts() : this.selectedHosts,
  total: total != null ? total() : this.total,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenValidationRulesPreviewResponseResult &&
          listEquals(availableHosts, other.availableHosts) &&
          excluded == other.excluded &&
          ignored == other.ignored &&
          included == other.included &&
          listEquals(operations, other.operations) &&
          listEquals(selectedHosts, other.selectedHosts) &&
          total == other.total; } 
@override int get hashCode { return Object.hash(Object.hashAll(availableHosts ?? const []), excluded, ignored, included, Object.hashAll(operations ?? const []), Object.hashAll(selectedHosts ?? const []), total); } 
@override String toString() { return 'TokenValidationRulesPreviewResponseResult(availableHosts: $availableHosts, excluded: $excluded, ignored: $ignored, included: $included, operations: $operations, selectedHosts: $selectedHosts, total: $total)'; } 
 }
