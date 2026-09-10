// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_hostname_ipfs_universal_path_gateway_content_list_entry_details_response4xx.dart';import 'web3_hostname_ipfs_universal_path_gateway_content_list_entry_details_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError {const Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError();

/// Decodes the payload for its declared status and content type.
static Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError parse(ApiResponse response) { switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError4xx(Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsResponse4xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError5xx(Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsResponse5xx.fromJson(json as Map<String, dynamic>));
default:
return Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsErrorUnknown(response);
}
 } 
 }
/// Response for 4xx (application/json).
final class Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError4xx extends Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError {const Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError4xx(this.data);

/// The decoded response payload.
final Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsResponse4xx data;

 }
/// Response for 5xx (application/json).
final class Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError5xx extends Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError {const Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError5xx(this.data);

/// The decoded response payload.
final Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsResponse5xx data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsErrorUnknown extends Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError {const Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
