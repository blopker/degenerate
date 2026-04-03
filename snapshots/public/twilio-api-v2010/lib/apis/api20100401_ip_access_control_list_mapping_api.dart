// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_sip_sip_domain_sip_ip_access_control_list_mapping.dart';import '../models/create_sip_ip_access_control_list_mapping_request.dart';import '../models/list_sip_ip_access_control_list_mapping_response.dart';/// Api20100401IpAccessControlListMappingApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401IpAccessControlListMappingApi with ApiExecutor {const Api20100401IpAccessControlListMappingApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch an IpAccessControlListMapping resource.
///
/// `GET /2010-04-01/Accounts/{AccountSid}/SIP/Domains/{DomainSid}/IpAccessControlListMappings/{Sid}.json`
Future<ApiResult<AccountSipSipDomainSipIpAccessControlListMapping, Never>> fetchSipIpAccessControlListMapping({required String accountSid, required String domainSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/Domains/${Uri.encodeComponent(domainSid)}/IpAccessControlListMappings/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountSipSipDomainSipIpAccessControlListMapping.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an IpAccessControlListMapping resource.
///
/// `DELETE /2010-04-01/Accounts/{AccountSid}/SIP/Domains/{DomainSid}/IpAccessControlListMappings/{Sid}.json`
Future<ApiResult<void, Never>> deleteSipIpAccessControlListMapping({required String accountSid, required String domainSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/Domains/${Uri.encodeComponent(domainSid)}/IpAccessControlListMappings/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieve a list of IpAccessControlListMapping resources.
///
/// `GET /2010-04-01/Accounts/{AccountSid}/SIP/Domains/{DomainSid}/IpAccessControlListMappings.json`
Future<ApiResult<ListSipIpAccessControlListMappingResponse, Never>> listSipIpAccessControlListMapping({required String accountSid, required String domainSid, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/Domains/${Uri.encodeComponent(domainSid)}/IpAccessControlListMappings.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListSipIpAccessControlListMappingResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new IpAccessControlListMapping resource.
///
/// `POST /2010-04-01/Accounts/{AccountSid}/SIP/Domains/{DomainSid}/IpAccessControlListMappings.json`
Future<ApiResult<AccountSipSipDomainSipIpAccessControlListMapping, Never>> createSipIpAccessControlListMapping({required String accountSid, required String domainSid, CreateSipIpAccessControlListMappingRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/Domains/${Uri.encodeComponent(domainSid)}/IpAccessControlListMappings.json',
  headers: headers,
  body: body == null ? null : <String>[
    'IpAccessControlListSid=${Uri.encodeQueryComponent(body.ipAccessControlListSid)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountSipSipDomainSipIpAccessControlListMapping.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
