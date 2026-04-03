// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_identifier.dart';import 'secondary_dns_name.dart';import 'secondary_dns_soa_serial.dart';import 'secondary_dns_time.dart';@immutable final class SecondaryDnsSingleResponseOutgoingResult {const SecondaryDnsSingleResponseOutgoingResult({this.checkedTime, this.createdTime, this.id, this.lastTransferredTime, this.name, this.peers, this.soaSerial, });

factory SecondaryDnsSingleResponseOutgoingResult.fromJson(Map<String, dynamic> json) { return SecondaryDnsSingleResponseOutgoingResult(
  checkedTime: json['checked_time'] != null ? SecondaryDnsTime.fromJson(json['checked_time'] as String) : null,
  createdTime: json['created_time'] != null ? SecondaryDnsTime.fromJson(json['created_time'] as String) : null,
  id: json['id'] != null ? SecondaryDnsIdentifier.fromJson(json['id'] as String) : null,
  lastTransferredTime: json['last_transferred_time'] != null ? SecondaryDnsTime.fromJson(json['last_transferred_time'] as String) : null,
  name: json['name'] != null ? SecondaryDnsName.fromJson(json['name'] as String) : null,
  peers: (json['peers'] as List<dynamic>?)?.map((e) => SecondaryDnsIdentifier.fromJson(e as String)).toList(),
  soaSerial: json['soa_serial'] != null ? SecondaryDnsSoaSerial.fromJson(json['soa_serial'] as num) : null,
); }

final SecondaryDnsTime? checkedTime;

final SecondaryDnsTime? createdTime;

final SecondaryDnsIdentifier? id;

final SecondaryDnsTime? lastTransferredTime;

/// Zone name.
final SecondaryDnsName? name;

/// A list of peer tags.
final List<SecondaryDnsIdentifier>? peers;

final SecondaryDnsSoaSerial? soaSerial;

Map<String, dynamic> toJson() { return {
  if (checkedTime != null) 'checked_time': checkedTime?.toJson(),
  if (createdTime != null) 'created_time': createdTime?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (lastTransferredTime != null) 'last_transferred_time': lastTransferredTime?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (peers != null) 'peers': peers?.map((e) => e.toJson()).toList(),
  if (soaSerial != null) 'soa_serial': soaSerial?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'checked_time', 'created_time', 'id', 'last_transferred_time', 'name', 'peers', 'soa_serial'}.contains(key)); } 
SecondaryDnsSingleResponseOutgoingResult copyWith({SecondaryDnsTime Function()? checkedTime, SecondaryDnsTime Function()? createdTime, SecondaryDnsIdentifier Function()? id, SecondaryDnsTime Function()? lastTransferredTime, SecondaryDnsName Function()? name, List<SecondaryDnsIdentifier> Function()? peers, SecondaryDnsSoaSerial Function()? soaSerial, }) { return SecondaryDnsSingleResponseOutgoingResult(
  checkedTime: checkedTime != null ? checkedTime() : this.checkedTime,
  createdTime: createdTime != null ? createdTime() : this.createdTime,
  id: id != null ? id() : this.id,
  lastTransferredTime: lastTransferredTime != null ? lastTransferredTime() : this.lastTransferredTime,
  name: name != null ? name() : this.name,
  peers: peers != null ? peers() : this.peers,
  soaSerial: soaSerial != null ? soaSerial() : this.soaSerial,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsSingleResponseOutgoingResult &&
          checkedTime == other.checkedTime &&
          createdTime == other.createdTime &&
          id == other.id &&
          lastTransferredTime == other.lastTransferredTime &&
          name == other.name &&
          listEquals(peers, other.peers) &&
          soaSerial == other.soaSerial; } 
@override int get hashCode { return Object.hash(checkedTime, createdTime, id, lastTransferredTime, name, Object.hashAll(peers ?? const []), soaSerial); } 
@override String toString() { return 'SecondaryDnsSingleResponseOutgoingResult(checkedTime: $checkedTime, createdTime: $createdTime, id: $id, lastTransferredTime: $lastTransferredTime, name: $name, peers: $peers, soaSerial: $soaSerial)'; } 
 }
