// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_hostname_ipfs_universal_path_gateway_content_list_details_response4xx.dart';import 'web3_hostname_ipfs_universal_path_gateway_content_list_details_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class Web3HostnameIpfsUniversalPathGatewayContentListDetailsError {const Web3HostnameIpfsUniversalPathGatewayContentListDetailsError();

/// Decodes the payload for its declared status and content type.
static Web3HostnameIpfsUniversalPathGatewayContentListDetailsError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  Web3HostnameIpfsUniversalPathGatewayContentListDetailsError4xx(Web3HostnameIpfsUniversalPathGatewayContentListDetailsResponse4xx.fromJson(json as Map<String, dynamic>));case >= 500 && < 600:
final json = jsonDecode(response.body);
return  Web3HostnameIpfsUniversalPathGatewayContentListDetailsError5xx(Web3HostnameIpfsUniversalPathGatewayContentListDetailsResponse5xx.fromJson(json as Map<String, dynamic>));default:
return  Web3HostnameIpfsUniversalPathGatewayContentListDetailsErrorUnknown(response); }}
}
/// Response for 4xx (application/json).
final class Web3HostnameIpfsUniversalPathGatewayContentListDetailsError4xx extends Web3HostnameIpfsUniversalPathGatewayContentListDetailsError {const Web3HostnameIpfsUniversalPathGatewayContentListDetailsError4xx(this.data);

/// The decoded response payload.
final Web3HostnameIpfsUniversalPathGatewayContentListDetailsResponse4xx data;

}
/// Response for 5xx (application/json).
final class Web3HostnameIpfsUniversalPathGatewayContentListDetailsError5xx extends Web3HostnameIpfsUniversalPathGatewayContentListDetailsError {const Web3HostnameIpfsUniversalPathGatewayContentListDetailsError5xx(this.data);

/// The decoded response payload.
final Web3HostnameIpfsUniversalPathGatewayContentListDetailsResponse5xx data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class Web3HostnameIpfsUniversalPathGatewayContentListDetailsErrorUnknown extends Web3HostnameIpfsUniversalPathGatewayContentListDetailsError {const Web3HostnameIpfsUniversalPathGatewayContentListDetailsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
