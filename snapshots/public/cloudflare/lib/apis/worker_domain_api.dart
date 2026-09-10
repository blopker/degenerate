// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/worker_domain_attach_to_domain_request.dart';import '../models/worker_domain_attach_to_domain_response4xx.dart';import '../models/worker_domain_get_a_domain_response4xx.dart';import '../models/worker_domain_list_domains_response4xx.dart';import '../models/workers_account_identifier.dart';import '../models/workers_domain.dart';import '../models/workers_domain_identifier.dart';import '../models/workers_schemas_service.dart';import '../models/workers_zone_identifier.dart';import '../models/workers_zone_name.dart';/// WorkerDomainApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkerDomainApi with ApiExecutor {const WorkerDomainApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Domains
///
/// Lists all Worker Domains for an account.
///
/// `GET /accounts/{account_id}/workers/domains`
Future<ApiResult<List<WorkersDomain>?, WorkerDomainListDomainsResponse4xx>> workerDomainListDomains({required WorkersAccountIdentifier accountId, WorkersZoneName? zoneName, WorkersSchemasService? service, WorkersZoneIdentifier? zoneId, String? hostname, String? environment, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (zoneName != null) {
  queryParameters['zone_name'] = zoneName.toString();
}
if (service != null) {
  queryParameters['service'] = service.toString();
}
if (zoneId != null) {
  queryParameters['zone_id'] = zoneId.toString();
}
if (hostname != null) {
  queryParameters['hostname'] = hostname;
}
if (environment != null) {
  queryParameters['environment'] = environment;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/domains',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>?)?.map((e) => WorkersDomain.fromJson(e as Map<String, dynamic>)).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  WorkerDomainListDomainsResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Attach to Domain
///
/// Attaches a Worker to a zone and hostname.
///
/// `PUT /accounts/{account_id}/workers/domains`
Future<ApiResult<WorkersDomain?, WorkerDomainAttachToDomainResponse4xx>> workerDomainAttachToDomain({required WorkersAccountIdentifier accountId, required WorkerDomainAttachToDomainRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/domains',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? WorkersDomain.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  WorkerDomainAttachToDomainResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Get a Domain
///
/// Gets a Worker domain.
///
/// `GET /accounts/{account_id}/workers/domains/{domain_id}`
Future<ApiResult<WorkersDomain?, WorkerDomainGetADomainResponse4xx>> workerDomainGetADomain({required WorkersAccountIdentifier accountId, required WorkersDomainIdentifier domainId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/domains/${Uri.encodeComponent(domainId.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? WorkersDomain.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  WorkerDomainGetADomainResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Detach from Domain
///
/// Detaches a Worker from a zone and hostname.
///
/// `DELETE /accounts/{account_id}/workers/domains/{domain_id}`
Future<ApiResult<void, Never>> workerDomainDetachFromDomain({required WorkersAccountIdentifier accountId, required WorkersDomainIdentifier domainId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/domains/${Uri.encodeComponent(domainId.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (_) {}, );}
}
