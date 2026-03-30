// GENERATED CODE - DO NOT MODIFY BY HAND

import 'addressing_timestamp.dart';/// An IPv4 or IPv6 address.
extension type const AddressingIp(String value) {
factory AddressingIp.fromJson(String json) => AddressingIp(json);

String toJson() => value;

}
final class AddressingAddressMapsIp {const AddressingAddressMapsIp({this.createdAt, this.ip, });

factory AddressingAddressMapsIp.fromJson(Map<String, dynamic> json) { return AddressingAddressMapsIp(
  createdAt: json['created_at'] != null ? AddressingTimestamp.fromJson(json['created_at'] as String) : null,
  ip: json['ip'] != null ? AddressingIp.fromJson(json['ip'] as String) : null,
); }

final AddressingTimestamp? createdAt;

final AddressingIp? ip;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (ip != null) 'ip': ip?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'ip'}.contains(key)); } 
AddressingAddressMapsIp copyWith({AddressingTimestamp Function()? createdAt, AddressingIp Function()? ip, }) { return AddressingAddressMapsIp(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  ip: ip != null ? ip() : this.ip,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingAddressMapsIp &&
          createdAt == other.createdAt &&
          ip == other.ip; } 
@override int get hashCode { return Object.hash(createdAt, ip); } 
@override String toString() { return 'AddressingAddressMapsIp(createdAt: $createdAt, ip: $ip)'; } 
 }
