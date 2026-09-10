// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_auto_refresh_seconds.dart';import 'secondary_dns_identifier.dart';import 'secondary_dns_name.dart';@immutable final class SecondaryDnsDnsSecondarySecondaryZoneRequest {const SecondaryDnsDnsSecondarySecondaryZoneRequest({required this.autoRefreshSeconds, required this.name, required this.peers, });

factory SecondaryDnsDnsSecondarySecondaryZoneRequest.fromJson(Map<String, dynamic> json) { return SecondaryDnsDnsSecondarySecondaryZoneRequest(
  autoRefreshSeconds: SecondaryDnsAutoRefreshSeconds.fromJson(json['auto_refresh_seconds'] as num),
  name: SecondaryDnsName.fromJson(json['name'] as String),
  peers: (json['peers'] as List<dynamic>).map((e) => SecondaryDnsIdentifier.fromJson(e as String)).toList(),
); }

/// How often should a secondary zone auto refresh regardless of DNS NOTIFY.
/// Not applicable for primary zones.
final SecondaryDnsAutoRefreshSeconds autoRefreshSeconds;

/// Zone name.
final SecondaryDnsName name;

/// A list of peer tags.
final List<SecondaryDnsIdentifier> peers;

Map<String, dynamic> toJson() { return {
  'auto_refresh_seconds': autoRefreshSeconds.toJson(),
  'name': name.toJson(),
  'peers': peers.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('auto_refresh_seconds') &&
      json.containsKey('name') &&
      json.containsKey('peers'); } 
SecondaryDnsDnsSecondarySecondaryZoneRequest copyWith({SecondaryDnsAutoRefreshSeconds? autoRefreshSeconds, SecondaryDnsName? name, List<SecondaryDnsIdentifier>? peers, }) { return SecondaryDnsDnsSecondarySecondaryZoneRequest(
  autoRefreshSeconds: autoRefreshSeconds ?? this.autoRefreshSeconds,
  name: name ?? this.name,
  peers: peers ?? this.peers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsDnsSecondarySecondaryZoneRequest &&
          autoRefreshSeconds == other.autoRefreshSeconds &&
          name == other.name &&
          listEquals(peers, other.peers); } 
@override int get hashCode { return Object.hash(autoRefreshSeconds, name, Object.hashAll(peers)); } 
@override String toString() { return 'SecondaryDnsDnsSecondarySecondaryZoneRequest(autoRefreshSeconds: $autoRefreshSeconds, name: $name, peers: $peers)'; } 
 }
