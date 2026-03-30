// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_sip_sip_domain_sip_auth_sip_auth_calls_sip_auth_calls_credential_list_mapping.dart';import '../models/create_sip_auth_calls_credential_list_mapping_request.dart';import '../models/list_sip_auth_calls_credential_list_mapping_response.dart';/// Api20100401AuthCallsCredentialListMappingApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401AuthCallsCredentialListMappingApi with ApiExecutor {const Api20100401AuthCallsCredentialListMappingApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieve a list of credential list mappings belonging to the domain used in the request
///
/// `GET /2010-04-01/Accounts/{AccountSid}/SIP/Domains/{DomainSid}/Auth/Calls/CredentialListMappings.json`
Future<ApiResult<ListSipAuthCallsCredentialListMappingResponse, Never>> listSipAuthCallsCredentialListMapping({required String accountSid, required String domainSid, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (pageSize != null) {
  queryParameters['PageSize'] = pageSize.toString();
}
if (page != null) {
  queryParameters['Page'] = page.toString();
}
if (pageToken != null) {
  queryParameters['PageToken'] = pageToken;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/Domains/${Uri.encodeComponent(domainSid)}/Auth/Calls/CredentialListMappings.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListSipAuthCallsCredentialListMappingResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new credential list mapping resource
///
/// `POST /2010-04-01/Accounts/{AccountSid}/SIP/Domains/{DomainSid}/Auth/Calls/CredentialListMappings.json`
Future<ApiResult<AccountSipSipDomainSipAuthSipAuthCallsSipAuthCallsCredentialListMapping, Never>> createSipAuthCallsCredentialListMapping({required String accountSid, required String domainSid, CreateSipAuthCallsCredentialListMappingRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/Domains/${Uri.encodeComponent(domainSid)}/Auth/Calls/CredentialListMappings.json',
  headers: headers,
  body: body == null ? null : [
    'CredentialListSid=${Uri.encodeQueryComponent(body.credentialListSid)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountSipSipDomainSipAuthSipAuthCallsSipAuthCallsCredentialListMapping.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch a specific instance of a credential list mapping
///
/// `GET /2010-04-01/Accounts/{AccountSid}/SIP/Domains/{DomainSid}/Auth/Calls/CredentialListMappings/{Sid}.json`
Future<ApiResult<AccountSipSipDomainSipAuthSipAuthCallsSipAuthCallsCredentialListMapping, Never>> fetchSipAuthCallsCredentialListMapping({required String accountSid, required String domainSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/Domains/${Uri.encodeComponent(domainSid)}/Auth/Calls/CredentialListMappings/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountSipSipDomainSipAuthSipAuthCallsSipAuthCallsCredentialListMapping.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a credential list mapping from the requested domain
///
/// `DELETE /2010-04-01/Accounts/{AccountSid}/SIP/Domains/{DomainSid}/Auth/Calls/CredentialListMappings/{Sid}.json`
Future<ApiResult<void, Never>> deleteSipAuthCallsCredentialListMapping({required String accountSid, required String domainSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/Domains/${Uri.encodeComponent(domainSid)}/Auth/Calls/CredentialListMappings/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
