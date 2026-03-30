// GENERATED CODE - DO NOT MODIFY BY HAND

final class TlsCertificatesAndHostnamesMessages2Source {const TlsCertificatesAndHostnamesMessages2Source({this.pointer});

factory TlsCertificatesAndHostnamesMessages2Source.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesMessages2Source(
  pointer: json['pointer'] as String?,
); }

final String? pointer;

Map<String, dynamic> toJson() { return {
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pointer'}.contains(key)); } 
TlsCertificatesAndHostnamesMessages2Source copyWith({String Function()? pointer}) { return TlsCertificatesAndHostnamesMessages2Source(
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesMessages2Source &&
          pointer == other.pointer; } 
@override int get hashCode { return pointer.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesMessages2Source(pointer: $pointer)'; } 
 }
