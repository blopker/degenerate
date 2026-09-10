// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_identifier.dart';import 'secondary_dns_name.dart';@immutable final class SecondaryDnsSingleRequestOutgoingRequest {const SecondaryDnsSingleRequestOutgoingRequest({required this.name, required this.peers, });

factory SecondaryDnsSingleRequestOutgoingRequest.fromJson(Map<String, dynamic> json) { return SecondaryDnsSingleRequestOutgoingRequest(
  name: SecondaryDnsName.fromJson(json['name'] as String),
  peers: (json['peers'] as List<dynamic>).map((e) => SecondaryDnsIdentifier.fromJson(e as String)).toList(),
); }

/// Zone name.
final SecondaryDnsName name;

/// A list of peer tags.
final List<SecondaryDnsIdentifier> peers;

Map<String, dynamic> toJson() { return {
  'name': name.toJson(),
  'peers': peers.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') &&
      json.containsKey('peers'); } 
SecondaryDnsSingleRequestOutgoingRequest copyWith({SecondaryDnsName? name, List<SecondaryDnsIdentifier>? peers, }) { return SecondaryDnsSingleRequestOutgoingRequest(
  name: name ?? this.name,
  peers: peers ?? this.peers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsSingleRequestOutgoingRequest &&
          name == other.name &&
          listEquals(peers, other.peers); } 
@override int get hashCode { return Object.hash(name, Object.hashAll(peers)); } 
@override String toString() { return 'SecondaryDnsSingleRequestOutgoingRequest(name: $name, peers: $peers)'; } 
 }
