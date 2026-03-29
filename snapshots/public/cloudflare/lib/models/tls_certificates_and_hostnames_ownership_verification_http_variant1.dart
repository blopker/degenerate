// GENERATED CODE - DO NOT MODIFY BY HAND

final class TlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1 {const TlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1({this.httpBody, this.httpUrl, });

factory TlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1(
  httpBody: json['http_body'] as String?,
  httpUrl: json['http_url'] as String?,
); }

/// Token to be served.
final String? httpBody;

/// The HTTP URL that will be checked during custom hostname verification and where the customer should host the token.
final String? httpUrl;

Map<String, dynamic> toJson() { return {
  'http_body': ?httpBody,
  'http_url': ?httpUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1 copyWith({String Function()? httpBody, String Function()? httpUrl, }) { return TlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1(
  httpBody: httpBody != null ? httpBody() : this.httpBody,
  httpUrl: httpUrl != null ? httpUrl() : this.httpUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1 &&
          httpBody == other.httpBody &&
          httpUrl == other.httpUrl; } 
@override int get hashCode { return Object.hash(httpBody, httpUrl); } 
@override String toString() { return 'TlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1(httpBody: $httpBody, httpUrl: $httpUrl)'; } 
 }
