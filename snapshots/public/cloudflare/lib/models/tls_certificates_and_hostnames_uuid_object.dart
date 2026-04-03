// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The DCV Delegation unique identifier.
extension type const TlsCertificatesAndHostnamesUuid(String value) {
factory TlsCertificatesAndHostnamesUuid.fromJson(String json) => TlsCertificatesAndHostnamesUuid(json);

String toJson() => value;

}
@immutable final class TlsCertificatesAndHostnamesUuidObject {const TlsCertificatesAndHostnamesUuidObject({this.uuid});

factory TlsCertificatesAndHostnamesUuidObject.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesUuidObject(
  uuid: json['uuid'] != null ? TlsCertificatesAndHostnamesUuid.fromJson(json['uuid'] as String) : null,
); }

/// The DCV Delegation unique identifier.
final TlsCertificatesAndHostnamesUuid? uuid;

Map<String, dynamic> toJson() { return {
  if (uuid != null) 'uuid': uuid?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'uuid'}.contains(key)); } 
TlsCertificatesAndHostnamesUuidObject copyWith({TlsCertificatesAndHostnamesUuid Function()? uuid}) { return TlsCertificatesAndHostnamesUuidObject(
  uuid: uuid != null ? uuid() : this.uuid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesUuidObject &&
          uuid == other.uuid; } 
@override int get hashCode { return uuid.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesUuidObject(uuid: $uuid)'; } 
 }
