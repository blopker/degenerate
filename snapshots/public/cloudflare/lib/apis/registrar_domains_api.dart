// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/domain_name.dart';import '../models/domain_properties.dart';import '../models/domain_update_properties.dart';import '../models/identifier3.dart';import '../models/registrar_domains_get_domain_response4xx.dart';import '../models/registrar_domains_list_domains_response4xx.dart';import '../models/registrar_domains_update_domain_response4xx.dart';/// RegistrarDomainsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RegistrarDomainsApi with ApiExecutor {const RegistrarDomainsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List domains
///
/// List domains handled by Registrar.
///
/// `GET /accounts/{account_id}/registrar/domains`
Future<ApiResult<List<DomainProperties>, RegistrarDomainsListDomainsResponse4xx>> registrarDomainsListDomains({required Identifier3 accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/registrar/domains',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => DomainProperties.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return RegistrarDomainsListDomainsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get domain
///
/// Show individual domain.
///
/// `GET /accounts/{account_id}/registrar/domains/{domain_name}`
Future<ApiResult<Map<String, dynamic>, RegistrarDomainsGetDomainResponse4xx>> registrarDomainsGetDomain({required DomainName domainName, required Identifier3 accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/registrar/domains/${Uri.encodeComponent(domainName.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return RegistrarDomainsGetDomainResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update domain
///
/// Update individual domain.
///
/// `PUT /accounts/{account_id}/registrar/domains/{domain_name}`
Future<ApiResult<Map<String, dynamic>, RegistrarDomainsUpdateDomainResponse4xx>> registrarDomainsUpdateDomain({required DomainName domainName, required Identifier3 accountId, required DomainUpdateProperties body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/registrar/domains/${Uri.encodeComponent(domainName.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return RegistrarDomainsUpdateDomainResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
