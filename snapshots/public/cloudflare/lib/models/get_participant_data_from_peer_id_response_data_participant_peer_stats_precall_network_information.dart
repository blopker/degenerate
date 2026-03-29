// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsPrecallNetworkInformation {const GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsPrecallNetworkInformation({this.backendRtt, this.effectiveNetworktype, this.fractionalLoss, this.jitter, this.reflexiveConnectivity, this.relayConnectivity, this.rtt, this.throughput, this.turnConnectivity, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsPrecallNetworkInformation.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsPrecallNetworkInformation(
  backendRtt: json['backend_rtt'] != null ? (json['backend_rtt'] as num).toDouble() : null,
  effectiveNetworktype: json['effective_networktype'] as String?,
  fractionalLoss: json['fractional_loss'] != null ? (json['fractional_loss'] as num).toInt() : null,
  jitter: json['jitter'] != null ? (json['jitter'] as num).toInt() : null,
  reflexiveConnectivity: json['reflexive_connectivity'] as bool?,
  relayConnectivity: json['relay_connectivity'] as bool?,
  rtt: json['rtt'] != null ? (json['rtt'] as num).toDouble() : null,
  throughput: json['throughput'] != null ? (json['throughput'] as num).toInt() : null,
  turnConnectivity: json['turn_connectivity'] as bool?,
); }

final double? backendRtt;

final String? effectiveNetworktype;

final int? fractionalLoss;

final int? jitter;

final bool? reflexiveConnectivity;

final bool? relayConnectivity;

final double? rtt;

final int? throughput;

final bool? turnConnectivity;

Map<String, dynamic> toJson() { return {
  'backend_rtt': ?backendRtt,
  'effective_networktype': ?effectiveNetworktype,
  'fractional_loss': ?fractionalLoss,
  'jitter': ?jitter,
  'reflexive_connectivity': ?reflexiveConnectivity,
  'relay_connectivity': ?relayConnectivity,
  'rtt': ?rtt,
  'throughput': ?throughput,
  'turn_connectivity': ?turnConnectivity,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsPrecallNetworkInformation copyWith({double Function()? backendRtt, String Function()? effectiveNetworktype, int Function()? fractionalLoss, int Function()? jitter, bool Function()? reflexiveConnectivity, bool Function()? relayConnectivity, double Function()? rtt, int Function()? throughput, bool Function()? turnConnectivity, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsPrecallNetworkInformation(
  backendRtt: backendRtt != null ? backendRtt() : this.backendRtt,
  effectiveNetworktype: effectiveNetworktype != null ? effectiveNetworktype() : this.effectiveNetworktype,
  fractionalLoss: fractionalLoss != null ? fractionalLoss() : this.fractionalLoss,
  jitter: jitter != null ? jitter() : this.jitter,
  reflexiveConnectivity: reflexiveConnectivity != null ? reflexiveConnectivity() : this.reflexiveConnectivity,
  relayConnectivity: relayConnectivity != null ? relayConnectivity() : this.relayConnectivity,
  rtt: rtt != null ? rtt() : this.rtt,
  throughput: throughput != null ? throughput() : this.throughput,
  turnConnectivity: turnConnectivity != null ? turnConnectivity() : this.turnConnectivity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsPrecallNetworkInformation &&
          backendRtt == other.backendRtt &&
          effectiveNetworktype == other.effectiveNetworktype &&
          fractionalLoss == other.fractionalLoss &&
          jitter == other.jitter &&
          reflexiveConnectivity == other.reflexiveConnectivity &&
          relayConnectivity == other.relayConnectivity &&
          rtt == other.rtt &&
          throughput == other.throughput &&
          turnConnectivity == other.turnConnectivity; } 
@override int get hashCode { return Object.hash(backendRtt, effectiveNetworktype, fractionalLoss, jitter, reflexiveConnectivity, relayConnectivity, rtt, throughput, turnConnectivity); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsPrecallNetworkInformation(backendRtt: $backendRtt, effectiveNetworktype: $effectiveNetworktype, fractionalLoss: $fractionalLoss, jitter: $jitter, reflexiveConnectivity: $reflexiveConnectivity, relayConnectivity: $relayConnectivity, rtt: $rtt, throughput: $throughput, turnConnectivity: $turnConnectivity)'; } 
 }
