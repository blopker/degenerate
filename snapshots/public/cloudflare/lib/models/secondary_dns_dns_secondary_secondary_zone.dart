// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_auto_refresh_seconds.dart';import 'secondary_dns_identifier.dart';import 'secondary_dns_name.dart';@immutable final class SecondaryDnsDnsSecondarySecondaryZone {const SecondaryDnsDnsSecondarySecondaryZone({required this.autoRefreshSeconds, required this.id, required this.name, required this.peers, });

factory SecondaryDnsDnsSecondarySecondaryZone.fromJson(Map<String, dynamic> json) { return SecondaryDnsDnsSecondarySecondaryZone(
  autoRefreshSeconds: SecondaryDnsAutoRefreshSeconds.fromJson(json['auto_refresh_seconds'] as num),
  id: SecondaryDnsIdentifier.fromJson(json['id'] as String),
  name: SecondaryDnsName.fromJson(json['name'] as String),
  peers: (json['peers'] as List<dynamic>).map((e) => SecondaryDnsIdentifier.fromJson(e as String)).toList(),
); }

/// How often should a secondary zone auto refresh regardless of DNS NOTIFY.
/// Not applicable for primary zones.
final SecondaryDnsAutoRefreshSeconds autoRefreshSeconds;

final SecondaryDnsIdentifier id;

final SecondaryDnsName name;

final List<SecondaryDnsIdentifier> peers;

Map<String, dynamic> toJson() { return {
  'auto_refresh_seconds': autoRefreshSeconds.toJson(),
  'id': id.toJson(),
  'name': name.toJson(),
  'peers': peers.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('auto_refresh_seconds') &&
      json.containsKey('id') &&
      json.containsKey('name') &&
      json.containsKey('peers'); } 
SecondaryDnsDnsSecondarySecondaryZone copyWith({SecondaryDnsAutoRefreshSeconds? autoRefreshSeconds, SecondaryDnsIdentifier? id, SecondaryDnsName? name, List<SecondaryDnsIdentifier>? peers, }) { return SecondaryDnsDnsSecondarySecondaryZone(
  autoRefreshSeconds: autoRefreshSeconds ?? this.autoRefreshSeconds,
  id: id ?? this.id,
  name: name ?? this.name,
  peers: peers ?? this.peers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsDnsSecondarySecondaryZone &&
          autoRefreshSeconds == other.autoRefreshSeconds &&
          id == other.id &&
          name == other.name &&
          listEquals(peers, other.peers); } 
@override int get hashCode { return Object.hash(autoRefreshSeconds, id, name, Object.hashAll(peers)); } 
@override String toString() { return 'SecondaryDnsDnsSecondarySecondaryZone(autoRefreshSeconds: $autoRefreshSeconds, id: $id, name: $name, peers: $peers)'; } 
 }
