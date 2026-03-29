// GENERATED CODE - DO NOT MODIFY BY HAND

final class ClientCertificateForAZoneEditClientCertificateRequest {const ClientCertificateForAZoneEditClientCertificateRequest({this.reactivate});

factory ClientCertificateForAZoneEditClientCertificateRequest.fromJson(Map<String, dynamic> json) { return ClientCertificateForAZoneEditClientCertificateRequest(
  reactivate: json['reactivate'] as bool?,
); }

final bool? reactivate;

Map<String, dynamic> toJson() { return {
  'reactivate': ?reactivate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reactivate'}.contains(key)); } 
ClientCertificateForAZoneEditClientCertificateRequest copyWith({bool Function()? reactivate}) { return ClientCertificateForAZoneEditClientCertificateRequest(
  reactivate: reactivate != null ? reactivate() : this.reactivate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ClientCertificateForAZoneEditClientCertificateRequest &&
          reactivate == other.reactivate; } 
@override int get hashCode { return reactivate.hashCode; } 
@override String toString() { return 'ClientCertificateForAZoneEditClientCertificateRequest(reactivate: $reactivate)'; } 
 }
