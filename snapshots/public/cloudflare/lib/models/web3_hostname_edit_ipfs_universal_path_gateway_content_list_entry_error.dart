// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_hostname_edit_ipfs_universal_path_gateway_content_list_entry_response4xx.dart';import 'web3_hostname_edit_ipfs_universal_path_gateway_content_list_entry_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError {const Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError();

/// Decodes the payload for its declared status and content type.
static Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError parse(ApiResponse response) { switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError4xx(Web3HostnameEditIpfsUniversalPathGatewayContentListEntryResponse4xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError5xx(Web3HostnameEditIpfsUniversalPathGatewayContentListEntryResponse5xx.fromJson(json as Map<String, dynamic>));
default:
return Web3HostnameEditIpfsUniversalPathGatewayContentListEntryErrorUnknown(response);
}
 } 
 }
/// Response for 4xx (application/json).
final class Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError4xx extends Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError {const Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError4xx(this.data);

/// The decoded response payload.
final Web3HostnameEditIpfsUniversalPathGatewayContentListEntryResponse4xx data;

 }
/// Response for 5xx (application/json).
final class Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError5xx extends Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError {const Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError5xx(this.data);

/// The decoded response payload.
final Web3HostnameEditIpfsUniversalPathGatewayContentListEntryResponse5xx data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class Web3HostnameEditIpfsUniversalPathGatewayContentListEntryErrorUnknown extends Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError {const Web3HostnameEditIpfsUniversalPathGatewayContentListEntryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
