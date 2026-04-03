// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Whether control of advertisement of the prefix to the Internet is enabled to be performed via BGP signal
extension type const AddressingBgpSignalingEnabled(bool value) {
factory AddressingBgpSignalingEnabled.fromJson(bool json) => AddressingBgpSignalingEnabled(json);

bool toJson() => value;

}
/// Last time BGP signaling control was toggled. This field is null if BGP signaling has never been enabled.
extension type AddressingBgpSignalingModifiedAt(DateTime value) {
factory AddressingBgpSignalingModifiedAt.fromJson(String json) => AddressingBgpSignalingModifiedAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
@immutable final class AddressingBgpSignalOpts {const AddressingBgpSignalOpts({this.enabled, this.modifiedAt, });

factory AddressingBgpSignalOpts.fromJson(Map<String, dynamic> json) { return AddressingBgpSignalOpts(
  enabled: json['enabled'] != null ? AddressingBgpSignalingEnabled.fromJson(json['enabled'] as bool) : null,
  modifiedAt: json['modified_at'] != null ? AddressingBgpSignalingModifiedAt.fromJson(json['modified_at'] as String) : null,
); }

final AddressingBgpSignalingEnabled? enabled;

final AddressingBgpSignalingModifiedAt? modifiedAt;

Map<String, dynamic> toJson() { return {
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (modifiedAt != null) 'modified_at': modifiedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'modified_at'}.contains(key)); } 
AddressingBgpSignalOpts copyWith({AddressingBgpSignalingEnabled Function()? enabled, AddressingBgpSignalingModifiedAt? Function()? modifiedAt, }) { return AddressingBgpSignalOpts(
  enabled: enabled != null ? enabled() : this.enabled,
  modifiedAt: modifiedAt != null ? modifiedAt() : this.modifiedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingBgpSignalOpts &&
          enabled == other.enabled &&
          modifiedAt == other.modifiedAt; } 
@override int get hashCode { return Object.hash(enabled, modifiedAt); } 
@override String toString() { return 'AddressingBgpSignalOpts(enabled: $enabled, modifiedAt: $modifiedAt)'; } 
 }
