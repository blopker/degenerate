// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/domain_name.dart';import '../models/domain_properties.dart';import '../models/domain_update_properties.dart';import '../models/identifier3.dart';/// RegistrarDomainsApi operations.
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
Future<ApiResult<List<DomainProperties>?, Never>> registrarDomainsListDomains({required Identifier3 accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/registrar/domains',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DomainProperties.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get domain
///
/// Show individual domain.
///
/// `GET /accounts/{account_id}/registrar/domains/{domain_name}`
Future<ApiResult<Map<String, dynamic>?, Never>> registrarDomainsGetDomain({required DomainName domainName, required Identifier3 accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/registrar/domains/${Uri.encodeComponent(domainName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v));
  },
);
 } 
/// Update domain
///
/// Update individual domain.
///
/// `PUT /accounts/{account_id}/registrar/domains/{domain_name}`
Future<ApiResult<Map<String, dynamic>?, Never>> registrarDomainsUpdateDomain({required DomainName domainName, required Identifier3 accountId, required DomainUpdateProperties body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/registrar/domains/${Uri.encodeComponent(domainName.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v));
  },
);
 } 
 }
