// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UrlscannerGetScanResponse2DataRequestsResponseResponseSecurityDetails {const UrlscannerGetScanResponse2DataRequestsResponseResponseSecurityDetails({required this.certificateId, required this.certificateTransparencyCompliance, required this.cipher, required this.encryptedClientHello, required this.issuer, required this.keyExchange, required this.keyExchangeGroup, required this.protocol, required this.sanList, required this.serverSignatureAlgorithm, required this.subjectName, required this.validFrom, required this.validTo, });

factory UrlscannerGetScanResponse2DataRequestsResponseResponseSecurityDetails.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2DataRequestsResponseResponseSecurityDetails(
  certificateId: (json['certificateId'] as num).toDouble(),
  certificateTransparencyCompliance: json['certificateTransparencyCompliance'] as String,
  cipher: json['cipher'] as String,
  encryptedClientHello: json['encryptedClientHello'] as bool,
  issuer: json['issuer'] as String,
  keyExchange: json['keyExchange'] as String,
  keyExchangeGroup: json['keyExchangeGroup'] as String,
  protocol: json['protocol'] as String,
  sanList: (json['sanList'] as List<dynamic>).map((e) => e as String).toList(),
  serverSignatureAlgorithm: (json['serverSignatureAlgorithm'] as num).toDouble(),
  subjectName: json['subjectName'] as String,
  validFrom: (json['validFrom'] as num).toDouble(),
  validTo: (json['validTo'] as num).toDouble(),
); }

final double certificateId;

final String certificateTransparencyCompliance;

final String cipher;

final bool encryptedClientHello;

final String issuer;

final String keyExchange;

final String keyExchangeGroup;

final String protocol;

final List<String> sanList;

final double serverSignatureAlgorithm;

final String subjectName;

final double validFrom;

final double validTo;

Map<String, dynamic> toJson() { return {
  'certificateId': certificateId,
  'certificateTransparencyCompliance': certificateTransparencyCompliance,
  'cipher': cipher,
  'encryptedClientHello': encryptedClientHello,
  'issuer': issuer,
  'keyExchange': keyExchange,
  'keyExchangeGroup': keyExchangeGroup,
  'protocol': protocol,
  'sanList': sanList,
  'serverSignatureAlgorithm': serverSignatureAlgorithm,
  'subjectName': subjectName,
  'validFrom': validFrom,
  'validTo': validTo,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificateId') && json['certificateId'] is num &&
      json.containsKey('certificateTransparencyCompliance') && json['certificateTransparencyCompliance'] is String &&
      json.containsKey('cipher') && json['cipher'] is String &&
      json.containsKey('encryptedClientHello') && json['encryptedClientHello'] is bool &&
      json.containsKey('issuer') && json['issuer'] is String &&
      json.containsKey('keyExchange') && json['keyExchange'] is String &&
      json.containsKey('keyExchangeGroup') && json['keyExchangeGroup'] is String &&
      json.containsKey('protocol') && json['protocol'] is String &&
      json.containsKey('sanList') &&
      json.containsKey('serverSignatureAlgorithm') && json['serverSignatureAlgorithm'] is num &&
      json.containsKey('subjectName') && json['subjectName'] is String &&
      json.containsKey('validFrom') && json['validFrom'] is num &&
      json.containsKey('validTo') && json['validTo'] is num; } 
UrlscannerGetScanResponse2DataRequestsResponseResponseSecurityDetails copyWith({double? certificateId, String? certificateTransparencyCompliance, String? cipher, bool? encryptedClientHello, String? issuer, String? keyExchange, String? keyExchangeGroup, String? protocol, List<String>? sanList, double? serverSignatureAlgorithm, String? subjectName, double? validFrom, double? validTo, }) { return UrlscannerGetScanResponse2DataRequestsResponseResponseSecurityDetails(
  certificateId: certificateId ?? this.certificateId,
  certificateTransparencyCompliance: certificateTransparencyCompliance ?? this.certificateTransparencyCompliance,
  cipher: cipher ?? this.cipher,
  encryptedClientHello: encryptedClientHello ?? this.encryptedClientHello,
  issuer: issuer ?? this.issuer,
  keyExchange: keyExchange ?? this.keyExchange,
  keyExchangeGroup: keyExchangeGroup ?? this.keyExchangeGroup,
  protocol: protocol ?? this.protocol,
  sanList: sanList ?? this.sanList,
  serverSignatureAlgorithm: serverSignatureAlgorithm ?? this.serverSignatureAlgorithm,
  subjectName: subjectName ?? this.subjectName,
  validFrom: validFrom ?? this.validFrom,
  validTo: validTo ?? this.validTo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2DataRequestsResponseResponseSecurityDetails &&
          certificateId == other.certificateId &&
          certificateTransparencyCompliance == other.certificateTransparencyCompliance &&
          cipher == other.cipher &&
          encryptedClientHello == other.encryptedClientHello &&
          issuer == other.issuer &&
          keyExchange == other.keyExchange &&
          keyExchangeGroup == other.keyExchangeGroup &&
          protocol == other.protocol &&
          listEquals(sanList, other.sanList) &&
          serverSignatureAlgorithm == other.serverSignatureAlgorithm &&
          subjectName == other.subjectName &&
          validFrom == other.validFrom &&
          validTo == other.validTo; } 
@override int get hashCode { return Object.hash(certificateId, certificateTransparencyCompliance, cipher, encryptedClientHello, issuer, keyExchange, keyExchangeGroup, protocol, Object.hashAll(sanList), serverSignatureAlgorithm, subjectName, validFrom, validTo); } 
@override String toString() { return 'UrlscannerGetScanResponse2DataRequestsResponseResponseSecurityDetails(certificateId: $certificateId, certificateTransparencyCompliance: $certificateTransparencyCompliance, cipher: $cipher, encryptedClientHello: $encryptedClientHello, issuer: $issuer, keyExchange: $keyExchange, keyExchangeGroup: $keyExchangeGroup, protocol: $protocol, sanList: $sanList, serverSignatureAlgorithm: $serverSignatureAlgorithm, subjectName: $subjectName, validFrom: $validFrom, validTo: $validTo)'; } 
 }
