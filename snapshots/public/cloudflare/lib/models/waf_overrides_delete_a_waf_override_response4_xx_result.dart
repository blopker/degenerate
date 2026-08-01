// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_overrides_id.dart';@immutable final class WafOverridesDeleteAWafOverrideResponse4XxResult {const WafOverridesDeleteAWafOverrideResponse4XxResult({this.id});

factory WafOverridesDeleteAWafOverrideResponse4XxResult.fromJson(Map<String, dynamic> json) { return WafOverridesDeleteAWafOverrideResponse4XxResult(
  id: json['id'] != null ? FirewallOverridesId.fromJson(json['id'] as String) : null,
); }

/// The unique identifier of the WAF override.
final FirewallOverridesId? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
WafOverridesDeleteAWafOverrideResponse4XxResult copyWith({FirewallOverridesId? Function()? id}) { return WafOverridesDeleteAWafOverrideResponse4XxResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafOverridesDeleteAWafOverrideResponse4XxResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'WafOverridesDeleteAWafOverrideResponse4XxResult(id: $id)'; } 
 }
