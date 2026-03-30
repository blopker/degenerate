// GENERATED CODE - DO NOT MODIFY BY HAND

import 'discovery_state.dart';final class ShieldPatchDiscoveryResponseResult {const ShieldPatchDiscoveryResponseResult({this.state});

factory ShieldPatchDiscoveryResponseResult.fromJson(Map<String, dynamic> json) { return ShieldPatchDiscoveryResponseResult(
  state: json['state'] != null ? DiscoveryState.fromJson(json['state'] as String) : null,
); }

/// State of operation in API Discovery
///   * `review` - Operation is not saved into API Shield Endpoint Management
///   * `saved` - Operation is saved into API Shield Endpoint Management
///   * `ignored` - Operation is marked as ignored
/// 
final DiscoveryState? state;

Map<String, dynamic> toJson() { return {
  if (state != null) 'state': state?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'state'}.contains(key)); } 
ShieldPatchDiscoveryResponseResult copyWith({DiscoveryState Function()? state}) { return ShieldPatchDiscoveryResponseResult(
  state: state != null ? state() : this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldPatchDiscoveryResponseResult &&
          state == other.state; } 
@override int get hashCode { return state.hashCode; } 
@override String toString() { return 'ShieldPatchDiscoveryResponseResult(state: $state)'; } 
 }
