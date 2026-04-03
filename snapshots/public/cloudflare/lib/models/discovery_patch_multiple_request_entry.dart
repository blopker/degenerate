// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'discovery_state_patch.dart';/// Mappings of discovered operations (keys) to objects describing their state
@immutable final class DiscoveryPatchMultipleRequestEntry {const DiscoveryPatchMultipleRequestEntry({this.state});

factory DiscoveryPatchMultipleRequestEntry.fromJson(Map<String, dynamic> json) { return DiscoveryPatchMultipleRequestEntry(
  state: json['state'] != null ? DiscoveryStatePatch.fromJson(json['state'] as String) : null,
); }

final DiscoveryStatePatch? state;

Map<String, dynamic> toJson() { return {
  if (state != null) 'state': state?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'state'}.contains(key)); } 
DiscoveryPatchMultipleRequestEntry copyWith({DiscoveryStatePatch Function()? state}) { return DiscoveryPatchMultipleRequestEntry(
  state: state != null ? state() : this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DiscoveryPatchMultipleRequestEntry &&
          state == other.state; } 
@override int get hashCode { return state.hashCode; } 
@override String toString() { return 'DiscoveryPatchMultipleRequestEntry(state: $state)'; } 
 }
