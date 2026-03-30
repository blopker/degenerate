// GENERATED CODE - DO NOT MODIFY BY HAND

final class DnsFirewallMessages2Source {const DnsFirewallMessages2Source({this.pointer});

factory DnsFirewallMessages2Source.fromJson(Map<String, dynamic> json) { return DnsFirewallMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
DnsFirewallMessages2Source copyWith({String Function()? pointer}) { return DnsFirewallMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'DnsFirewallMessages2Source(pointer: $pointer)'; } 
 }
