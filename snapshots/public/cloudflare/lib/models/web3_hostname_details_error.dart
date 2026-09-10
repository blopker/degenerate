// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_hostname_web3_hostname_details_response4xx.dart';import 'web3_hostname_web3_hostname_details_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class Web3HostnameDetailsError {const Web3HostnameDetailsError();

/// Decodes the payload for its declared status and content type.
static Web3HostnameDetailsError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return Web3HostnameDetailsError4xx(Web3HostnameWeb3HostnameDetailsResponse4xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return Web3HostnameDetailsError5xx(Web3HostnameWeb3HostnameDetailsResponse5xx.fromJson(json as Map<String, dynamic>));
default:
return Web3HostnameDetailsErrorUnknown(response);
}
}
}
/// Response for 4xx (application/json).
final class Web3HostnameDetailsError4xx extends Web3HostnameDetailsError {const Web3HostnameDetailsError4xx(this.data);

/// The decoded response payload.
final Web3HostnameWeb3HostnameDetailsResponse4xx data;

}
/// Response for 5xx (application/json).
final class Web3HostnameDetailsError5xx extends Web3HostnameDetailsError {const Web3HostnameDetailsError5xx(this.data);

/// The decoded response payload.
final Web3HostnameWeb3HostnameDetailsResponse5xx data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class Web3HostnameDetailsErrorUnknown extends Web3HostnameDetailsError {const Web3HostnameDetailsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
