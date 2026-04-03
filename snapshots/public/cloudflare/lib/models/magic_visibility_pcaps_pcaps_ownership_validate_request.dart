// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_pcaps_pcaps_destination_conf.dart';import 'magic_visibility_pcaps_pcaps_ownership_challenge.dart';@immutable final class MagicVisibilityPcapsPcapsOwnershipValidateRequest {const MagicVisibilityPcapsPcapsOwnershipValidateRequest({required this.destinationConf, required this.ownershipChallenge, });

factory MagicVisibilityPcapsPcapsOwnershipValidateRequest.fromJson(Map<String, dynamic> json) { return MagicVisibilityPcapsPcapsOwnershipValidateRequest(
  destinationConf: MagicVisibilityPcapsPcapsDestinationConf.fromJson(json['destination_conf'] as String),
  ownershipChallenge: MagicVisibilityPcapsPcapsOwnershipChallenge.fromJson(json['ownership_challenge'] as String),
); }

/// The full URI for the bucket. This field only applies to `full` packet captures.
final MagicVisibilityPcapsPcapsDestinationConf destinationConf;

/// The ownership challenge filename stored in the bucket.
final MagicVisibilityPcapsPcapsOwnershipChallenge ownershipChallenge;

Map<String, dynamic> toJson() { return {
  'destination_conf': destinationConf.toJson(),
  'ownership_challenge': ownershipChallenge.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('destination_conf') &&
      json.containsKey('ownership_challenge'); } 
MagicVisibilityPcapsPcapsOwnershipValidateRequest copyWith({MagicVisibilityPcapsPcapsDestinationConf? destinationConf, MagicVisibilityPcapsPcapsOwnershipChallenge? ownershipChallenge, }) { return MagicVisibilityPcapsPcapsOwnershipValidateRequest(
  destinationConf: destinationConf ?? this.destinationConf,
  ownershipChallenge: ownershipChallenge ?? this.ownershipChallenge,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityPcapsPcapsOwnershipValidateRequest &&
          destinationConf == other.destinationConf &&
          ownershipChallenge == other.ownershipChallenge; } 
@override int get hashCode { return Object.hash(destinationConf, ownershipChallenge); } 
@override String toString() { return 'MagicVisibilityPcapsPcapsOwnershipValidateRequest(destinationConf: $destinationConf, ownershipChallenge: $ownershipChallenge)'; } 
 }
