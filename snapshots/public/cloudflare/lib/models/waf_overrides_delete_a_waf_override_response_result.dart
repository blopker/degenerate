// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_overrides_id.dart';@immutable final class WafOverridesDeleteAWafOverrideResponseResult {const WafOverridesDeleteAWafOverrideResponseResult({this.id});

factory WafOverridesDeleteAWafOverrideResponseResult.fromJson(Map<String, dynamic> json) { return WafOverridesDeleteAWafOverrideResponseResult(
  id: json['id'] != null ? FirewallOverridesId.fromJson(json['id'] as String) : null,
); }

/// The unique identifier of the WAF override.
final FirewallOverridesId? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
WafOverridesDeleteAWafOverrideResponseResult copyWith({FirewallOverridesId Function()? id}) { return WafOverridesDeleteAWafOverrideResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafOverridesDeleteAWafOverrideResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'WafOverridesDeleteAWafOverrideResponseResult(id: $id)'; } 
 }
