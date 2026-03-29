// GENERATED CODE - DO NOT MODIFY BY HAND

final class Port {const Port({this.number, this.proto, this.status, });

factory Port.fromJson(Map<String, dynamic> json) { return Port(
  number: json['number'] != null ? (json['number'] as num).toDouble() : null,
  proto: json['proto'] as String?,
  status: json['status'] as String?,
); }

final double? number;

final String? proto;

final String? status;

Map<String, dynamic> toJson() { return {
  'number': ?number,
  'proto': ?proto,
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'number', 'proto', 'status'}.contains(key)); } 
Port copyWith({double Function()? number, String Function()? proto, String Function()? status, }) { return Port(
  number: number != null ? number() : this.number,
  proto: proto != null ? proto() : this.proto,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Port &&
          number == other.number &&
          proto == other.proto &&
          status == other.status; } 
@override int get hashCode { return Object.hash(number, proto, status); } 
@override String toString() { return 'Port(number: $number, proto: $proto, status: $status)'; } 
 }
