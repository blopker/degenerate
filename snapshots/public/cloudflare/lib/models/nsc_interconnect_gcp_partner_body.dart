// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bandwidth.dart';@immutable final class NscInterconnectGcpPartnerBody {const NscInterconnectGcpPartnerBody({required this.account, required this.name, required this.type, required this.region, this.owner, this.speed, });

factory NscInterconnectGcpPartnerBody.fromJson(Map<String, dynamic> json) { return NscInterconnectGcpPartnerBody(
  account: json['account'] as String,
  name: json['name'] as String,
  owner: json['owner'] as String?,
  type: json['type'] as String,
  region: json['region'] as String,
  speed: json['speed'] != null ? Bandwidth.fromJson(json['speed'] as String) : null,
); }

final String account;

final String name;

final String? owner;

final String type;

final String region;

/// Bandwidth structure as visible through the customer-facing API.
final Bandwidth? speed;

Map<String, dynamic> toJson() { return {
  'account': account,
  'name': name,
  'owner': ?owner,
  'type': type,
  'region': region,
  if (speed != null) 'speed': speed?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account') && json['account'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('region') && json['region'] is String; } 
NscInterconnectGcpPartnerBody copyWith({String? account, String? name, String Function()? owner, String? type, String? region, Bandwidth Function()? speed, }) { return NscInterconnectGcpPartnerBody(
  account: account ?? this.account,
  name: name ?? this.name,
  owner: owner != null ? owner() : this.owner,
  type: type ?? this.type,
  region: region ?? this.region,
  speed: speed != null ? speed() : this.speed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NscInterconnectGcpPartnerBody &&
          account == other.account &&
          name == other.name &&
          owner == other.owner &&
          type == other.type &&
          region == other.region &&
          speed == other.speed; } 
@override int get hashCode { return Object.hash(account, name, owner, type, region, speed); } 
@override String toString() { return 'NscInterconnectGcpPartnerBody(account: $account, name: $name, owner: $owner, type: $type, region: $region, speed: $speed)'; } 
 }
