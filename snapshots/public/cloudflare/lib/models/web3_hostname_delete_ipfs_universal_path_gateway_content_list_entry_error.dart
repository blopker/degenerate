// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_hostname_delete_ipfs_universal_path_gateway_content_list_entry_response4xx.dart';import 'web3_hostname_delete_ipfs_universal_path_gateway_content_list_entry_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError {const Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError();

/// Decodes the payload for its declared status and content type.
static Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError parse(ApiResponse response) { switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError4xx(Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryResponse4xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError5xx(Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryResponse5xx.fromJson(json as Map<String, dynamic>));
default:
return Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryErrorUnknown(response);
}
 } 
 }
/// Response for 4xx (application/json).
final class Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError4xx extends Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError {const Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError4xx(this.data);

/// The decoded response payload.
final Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryResponse4xx data;

 }
/// Response for 5xx (application/json).
final class Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError5xx extends Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError {const Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError5xx(this.data);

/// The decoded response payload.
final Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryResponse5xx data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryErrorUnknown extends Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError {const Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
