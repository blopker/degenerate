// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_collection_response.dart';import 'web3_single_response.dart';/// Error responses of `PATCH /zones/{zone_id}/web3/hostnames/{identifier}`.
sealed class Web3HostnameEditWeb3HostnameError {const Web3HostnameEditWeb3HostnameError();

/// Parse the variant matching the response status code.
factory Web3HostnameEditWeb3HostnameError.parse(ApiResponse response) { return switch (response.statusCode) {
  >= 400 && <= 499 => Web3HostnameEditWeb3HostnameError4xx.parse(response),
  >= 500 && <= 599 => Web3HostnameEditWeb3HostnameError5xx.parse(response),
  _ => Web3HostnameEditWeb3HostnameError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `4XX` range response.
@immutable final class Web3HostnameEditWeb3HostnameError4xx extends Web3HostnameEditWeb3HostnameError {const Web3HostnameEditWeb3HostnameError4xx(this.data);

factory Web3HostnameEditWeb3HostnameError4xx.parse(ApiResponse response) { return Web3HostnameEditWeb3HostnameError4xx(Web3CollectionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final Web3CollectionResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is Web3HostnameEditWeb3HostnameError4xx && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'Web3HostnameEditWeb3HostnameError4xx($data)'; } 
 }
/// The `5XX` range response.
@immutable final class Web3HostnameEditWeb3HostnameError5xx extends Web3HostnameEditWeb3HostnameError {const Web3HostnameEditWeb3HostnameError5xx(this.data);

factory Web3HostnameEditWeb3HostnameError5xx.parse(ApiResponse response) { return Web3HostnameEditWeb3HostnameError5xx(Web3SingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final Web3SingleResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is Web3HostnameEditWeb3HostnameError5xx && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'Web3HostnameEditWeb3HostnameError5xx($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class Web3HostnameEditWeb3HostnameError$Unknown extends Web3HostnameEditWeb3HostnameError {const Web3HostnameEditWeb3HostnameError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is Web3HostnameEditWeb3HostnameError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'Web3HostnameEditWeb3HostnameError.unknown($statusCode)'; } 
 }
