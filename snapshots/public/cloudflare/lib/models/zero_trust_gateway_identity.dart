// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specify the wirefilter expression used for identity matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
extension type const ZeroTrustGatewayIdentity(String value) {
factory ZeroTrustGatewayIdentity.fromJson(String json) => ZeroTrustGatewayIdentity(json);

String toJson() => value;

}
