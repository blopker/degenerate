// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_auto_refresh_seconds.dart';import 'secondary_dns_identifier.dart';import 'secondary_dns_name.dart';import 'secondary_dns_soa_serial.dart';import 'secondary_dns_time.dart';@immutable final class SecondaryDnsSingleResponseIncomingResult {const SecondaryDnsSingleResponseIncomingResult({this.autoRefreshSeconds, this.checkedTime, this.createdTime, this.id, this.modifiedTime, this.name, this.peers, this.soaSerial, });

factory SecondaryDnsSingleResponseIncomingResult.fromJson(Map<String, dynamic> json) { return SecondaryDnsSingleResponseIncomingResult(
  autoRefreshSeconds: json['auto_refresh_seconds'] != null ? SecondaryDnsAutoRefreshSeconds.fromJson(json['auto_refresh_seconds'] as num) : null,
  checkedTime: json['checked_time'] != null ? SecondaryDnsTime.fromJson(json['checked_time'] as String) : null,
  createdTime: json['created_time'] != null ? SecondaryDnsTime.fromJson(json['created_time'] as String) : null,
  id: json['id'] != null ? SecondaryDnsIdentifier.fromJson(json['id'] as String) : null,
  modifiedTime: json['modified_time'] != null ? SecondaryDnsTime.fromJson(json['modified_time'] as String) : null,
  name: json['name'] != null ? SecondaryDnsName.fromJson(json['name'] as String) : null,
  peers: (json['peers'] as List<dynamic>?)?.map((e) => SecondaryDnsIdentifier.fromJson(e as String)).toList(),
  soaSerial: json['soa_serial'] != null ? SecondaryDnsSoaSerial.fromJson(json['soa_serial'] as num) : null,
); }

/// How often should a secondary zone auto refresh regardless of DNS NOTIFY.
/// Not applicable for primary zones.
final SecondaryDnsAutoRefreshSeconds? autoRefreshSeconds;

final SecondaryDnsTime? checkedTime;

final SecondaryDnsTime? createdTime;

final SecondaryDnsIdentifier? id;

final SecondaryDnsTime? modifiedTime;

/// Zone name.
final SecondaryDnsName? name;

/// A list of peer tags.
final List<SecondaryDnsIdentifier>? peers;

final SecondaryDnsSoaSerial? soaSerial;

Map<String, dynamic> toJson() { return {
  if (autoRefreshSeconds != null) 'auto_refresh_seconds': autoRefreshSeconds?.toJson(),
  if (checkedTime != null) 'checked_time': checkedTime?.toJson(),
  if (createdTime != null) 'created_time': createdTime?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (modifiedTime != null) 'modified_time': modifiedTime?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (peers != null) 'peers': peers?.map((e) => e.toJson()).toList(),
  if (soaSerial != null) 'soa_serial': soaSerial?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'auto_refresh_seconds', 'checked_time', 'created_time', 'id', 'modified_time', 'name', 'peers', 'soa_serial'}.contains(key)); } 
SecondaryDnsSingleResponseIncomingResult copyWith({SecondaryDnsAutoRefreshSeconds Function()? autoRefreshSeconds, SecondaryDnsTime Function()? checkedTime, SecondaryDnsTime Function()? createdTime, SecondaryDnsIdentifier Function()? id, SecondaryDnsTime Function()? modifiedTime, SecondaryDnsName Function()? name, List<SecondaryDnsIdentifier> Function()? peers, SecondaryDnsSoaSerial Function()? soaSerial, }) { return SecondaryDnsSingleResponseIncomingResult(
  autoRefreshSeconds: autoRefreshSeconds != null ? autoRefreshSeconds() : this.autoRefreshSeconds,
  checkedTime: checkedTime != null ? checkedTime() : this.checkedTime,
  createdTime: createdTime != null ? createdTime() : this.createdTime,
  id: id != null ? id() : this.id,
  modifiedTime: modifiedTime != null ? modifiedTime() : this.modifiedTime,
  name: name != null ? name() : this.name,
  peers: peers != null ? peers() : this.peers,
  soaSerial: soaSerial != null ? soaSerial() : this.soaSerial,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsSingleResponseIncomingResult &&
          autoRefreshSeconds == other.autoRefreshSeconds &&
          checkedTime == other.checkedTime &&
          createdTime == other.createdTime &&
          id == other.id &&
          modifiedTime == other.modifiedTime &&
          name == other.name &&
          listEquals(peers, other.peers) &&
          soaSerial == other.soaSerial; } 
@override int get hashCode { return Object.hash(autoRefreshSeconds, checkedTime, createdTime, id, modifiedTime, name, Object.hashAll(peers ?? const []), soaSerial); } 
@override String toString() { return 'SecondaryDnsSingleResponseIncomingResult(autoRefreshSeconds: $autoRefreshSeconds, checkedTime: $checkedTime, createdTime: $createdTime, id: $id, modifiedTime: $modifiedTime, name: $name, peers: $peers, soaSerial: $soaSerial)'; } 
 }
