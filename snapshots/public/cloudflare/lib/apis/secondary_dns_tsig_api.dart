// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/secondary_dns_account_identifier.dart';import '../models/secondary_dns_schemas_id_response_result.dart';import '../models/secondary_dns_schemas_identifier.dart';import '../models/secondary_dns_tsig.dart';import '../models/secondary_dns_tsig_create_tsig_response4_xx.dart';import '../models/secondary_dns_tsig_delete_tsig_response4_xx.dart';import '../models/secondary_dns_tsig_list_tsi_gs_response4_xx.dart';import '../models/secondary_dns_tsig_request.dart';import '../models/secondary_dns_tsig_tsig_details_response4_xx.dart';import '../models/secondary_dns_tsig_update_tsig_response4_xx.dart';/// SecondaryDnsTsigApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SecondaryDnsTsigApi with ApiExecutor {const SecondaryDnsTsigApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List TSIGs
///
/// List TSIGs.
///
/// `GET /accounts/{account_id}/secondary_dns/tsigs`
Future<ApiResult<List<SecondaryDnsTsig>?, SecondaryDnsTsigListTsiGsResponse4Xx>> secondaryDnsTsigListTsiGs({required SecondaryDnsAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secondary_dns/tsigs',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => SecondaryDnsTsig.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SecondaryDnsTsigListTsiGsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create TSIG
///
/// Create TSIG.
///
/// `POST /accounts/{account_id}/secondary_dns/tsigs`
Future<ApiResult<SecondaryDnsTsig?, SecondaryDnsTsigCreateTsigResponse4Xx>> secondaryDnsTsigCreateTsig({required SecondaryDnsAccountIdentifier accountId, required SecondaryDnsTsigRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secondary_dns/tsigs',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? SecondaryDnsTsig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SecondaryDnsTsigCreateTsigResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// TSIG Details
///
/// Get TSIG.
///
/// `GET /accounts/{account_id}/secondary_dns/tsigs/{tsig_id}`
Future<ApiResult<SecondaryDnsTsig?, SecondaryDnsTsigTsigDetailsResponse4Xx>> secondaryDnsTsigTsigDetails({required SecondaryDnsSchemasIdentifier tsigId, required SecondaryDnsAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secondary_dns/tsigs/${Uri.encodeComponent(tsigId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? SecondaryDnsTsig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SecondaryDnsTsigTsigDetailsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update TSIG
///
/// Modify TSIG.
///
/// `PUT /accounts/{account_id}/secondary_dns/tsigs/{tsig_id}`
Future<ApiResult<SecondaryDnsTsig?, SecondaryDnsTsigUpdateTsigResponse4Xx>> secondaryDnsTsigUpdateTsig({required SecondaryDnsSchemasIdentifier tsigId, required SecondaryDnsAccountIdentifier accountId, required SecondaryDnsTsigRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secondary_dns/tsigs/${Uri.encodeComponent(tsigId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? SecondaryDnsTsig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SecondaryDnsTsigUpdateTsigResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete TSIG
///
/// Delete TSIG.
///
/// `DELETE /accounts/{account_id}/secondary_dns/tsigs/{tsig_id}`
Future<ApiResult<SecondaryDnsSchemasIdResponseResult?, SecondaryDnsTsigDeleteTsigResponse4Xx>> secondaryDnsTsigDeleteTsig({required SecondaryDnsSchemasIdentifier tsigId, required SecondaryDnsAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/secondary_dns/tsigs/${Uri.encodeComponent(tsigId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? SecondaryDnsSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SecondaryDnsTsigDeleteTsigResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
