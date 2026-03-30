// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';import '../models/tls_certificates_and_hostnames_uuid_object.dart';/// DcvDelegationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DcvDelegationApi with ApiExecutor {const DcvDelegationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieve the DCV Delegation unique identifier.
///
/// Retrieve the account and zone specific unique identifier used as part of the CNAME target for DCV Delegation.
///
/// `GET /zones/{zone_id}/dcv_delegation/uuid`
Future<ApiResult<TlsCertificatesAndHostnamesUuidObject?, Never>> dcvDelegationUuidGet({required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dcv_delegation/uuid',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesUuidObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
