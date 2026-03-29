// GENERATED CODE - DO NOT MODIFY BY HAND

final class DnsRecordsMessages2Source {const DnsRecordsMessages2Source({this.pointer});

factory DnsRecordsMessages2Source.fromJson(Map<String, dynamic> json) { return DnsRecordsMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
DnsRecordsMessages2Source copyWith({String Function()? pointer}) { return DnsRecordsMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'DnsRecordsMessages2Source(pointer: $pointer)'; } 
 }
