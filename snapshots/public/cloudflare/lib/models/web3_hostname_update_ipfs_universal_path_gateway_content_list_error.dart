// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_hostname_update_ipfs_universal_path_gateway_content_list_response4xx.dart';import 'web3_hostname_update_ipfs_universal_path_gateway_content_list_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class Web3HostnameUpdateIpfsUniversalPathGatewayContentListError {const Web3HostnameUpdateIpfsUniversalPathGatewayContentListError();

/// Decodes the payload for its declared status and content type.
static Web3HostnameUpdateIpfsUniversalPathGatewayContentListError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return Web3HostnameUpdateIpfsUniversalPathGatewayContentListError4xx(Web3HostnameUpdateIpfsUniversalPathGatewayContentListResponse4xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return Web3HostnameUpdateIpfsUniversalPathGatewayContentListError5xx(Web3HostnameUpdateIpfsUniversalPathGatewayContentListResponse5xx.fromJson(json as Map<String, dynamic>));
default:
return Web3HostnameUpdateIpfsUniversalPathGatewayContentListErrorUnknown(response);
}
}
}
/// Response for 4xx (application/json).
final class Web3HostnameUpdateIpfsUniversalPathGatewayContentListError4xx extends Web3HostnameUpdateIpfsUniversalPathGatewayContentListError {const Web3HostnameUpdateIpfsUniversalPathGatewayContentListError4xx(this.data);

/// The decoded response payload.
final Web3HostnameUpdateIpfsUniversalPathGatewayContentListResponse4xx data;

}
/// Response for 5xx (application/json).
final class Web3HostnameUpdateIpfsUniversalPathGatewayContentListError5xx extends Web3HostnameUpdateIpfsUniversalPathGatewayContentListError {const Web3HostnameUpdateIpfsUniversalPathGatewayContentListError5xx(this.data);

/// The decoded response payload.
final Web3HostnameUpdateIpfsUniversalPathGatewayContentListResponse5xx data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class Web3HostnameUpdateIpfsUniversalPathGatewayContentListErrorUnknown extends Web3HostnameUpdateIpfsUniversalPathGatewayContentListError {const Web3HostnameUpdateIpfsUniversalPathGatewayContentListErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
