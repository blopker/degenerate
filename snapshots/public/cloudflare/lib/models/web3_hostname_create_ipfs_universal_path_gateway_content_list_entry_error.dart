// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_hostname_create_ipfs_universal_path_gateway_content_list_entry_response4xx.dart';import 'web3_hostname_create_ipfs_universal_path_gateway_content_list_entry_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError {const Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError();

/// Decodes the payload for its declared status and content type.
static Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError parse(ApiResponse response) { switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError4xx(Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse4xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError5xx(Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5xx.fromJson(json as Map<String, dynamic>));
default:
return Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryErrorUnknown(response);
}
 } 
 }
/// Response for 4xx (application/json).
final class Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError4xx extends Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError {const Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError4xx(this.data);

/// The decoded response payload.
final Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse4xx data;

 }
/// Response for 5xx (application/json).
final class Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError5xx extends Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError {const Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError5xx(this.data);

/// The decoded response payload.
final Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5xx data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryErrorUnknown extends Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError {const Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
