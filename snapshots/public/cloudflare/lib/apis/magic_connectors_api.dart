// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/mconn_account_id.dart';import '../models/mconn_bad_response.dart';import '../models/mconn_customer_connector_create_request.dart';import '../models/mconn_customer_connector_create_response.dart';import '../models/mconn_customer_connector_delete_response.dart';import '../models/mconn_customer_connector_fetch_response.dart';import '../models/mconn_customer_connector_list_response.dart';import '../models/mconn_customer_connector_update_request.dart';import '../models/mconn_customer_connector_update_response.dart';import '../models/mconn_customer_event_get_success.dart';import '../models/mconn_customer_events_get_latest_success.dart';import '../models/mconn_customer_events_get_success.dart';import '../models/mconn_customer_snapshot_get_success.dart';import '../models/mconn_customer_snapshots_get_latest_success.dart';import '../models/mconn_customer_snapshots_get_success.dart';import '../models/mconn_envelope.dart';import '../models/mconn_uuid.dart';/// MagicConnectorsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicConnectorsApi with ApiExecutor {const MagicConnectorsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Connectors
///
/// `GET /accounts/{account_id}/magic/connectors`
Future<ApiResult<MconnCustomerConnectorListResponse, MconnBadResponse>> mconnConnectorList({required MconnAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/connectors',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MconnCustomerConnectorListResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return MconnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Add a connector to your account
///
/// `POST /accounts/{account_id}/magic/connectors`
Future<ApiResult<MconnCustomerConnectorCreateResponse, MconnBadResponse>> mconnConnectorCreate({required MconnAccountId accountId, required MconnCustomerConnectorCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/connectors',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MconnCustomerConnectorCreateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return MconnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch Connector
///
/// `GET /accounts/{account_id}/magic/connectors/{connector_id}`
Future<ApiResult<MconnCustomerConnectorFetchResponse, MconnBadResponse>> mconnConnectorFetch({required MconnAccountId accountId, required MconnUuid connectorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/connectors/${Uri.encodeComponent(connectorId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MconnCustomerConnectorFetchResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return MconnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Replace Connector or Re-provision License Key
///
/// `PUT /accounts/{account_id}/magic/connectors/{connector_id}`
Future<ApiResult<MconnCustomerConnectorUpdateResponse, MconnBadResponse>> mconnConnectorReplace({required MconnAccountId accountId, required MconnUuid connectorId, required MconnCustomerConnectorUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/connectors/${Uri.encodeComponent(connectorId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MconnCustomerConnectorUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return MconnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Edit Connector to update specific properties or Re-provision License Key
///
/// `PATCH /accounts/{account_id}/magic/connectors/{connector_id}`
Future<ApiResult<MconnCustomerConnectorUpdateResponse, MconnBadResponse>> mconnConnectorUpdate({required MconnAccountId accountId, required MconnUuid connectorId, required MconnCustomerConnectorUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/connectors/${Uri.encodeComponent(connectorId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MconnCustomerConnectorUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return MconnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Remove a connector from your account
///
/// `DELETE /accounts/{account_id}/magic/connectors/{connector_id}`
Future<ApiResult<MconnCustomerConnectorDeleteResponse, MconnBadResponse>> mconnConnectorDelete({required MconnAccountId accountId, required MconnUuid connectorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/connectors/${Uri.encodeComponent(connectorId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MconnCustomerConnectorDeleteResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return MconnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Events
///
/// `GET /accounts/{account_id}/magic/connectors/{connector_id}/telemetry/events`
Future<ApiResult<MconnCustomerEventsGetSuccess, MconnEnvelope>> mconnConnectorTelemetryEventsList({required MconnAccountId accountId, required String connectorId, required double from, required double to, double? limit, String? cursor, String? k, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['from'] = from.toString();
queryParameters['to'] = to.toString();
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}
if (k != null) {
  queryParameters['k'] = k;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/connectors/${Uri.encodeComponent(connectorId)}/telemetry/events',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MconnCustomerEventsGetSuccess.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return MconnEnvelope.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Event
///
/// `GET /accounts/{account_id}/magic/connectors/{connector_id}/telemetry/events/{event_t}.{event_n}`
Future<ApiResult<MconnCustomerEventGetSuccess, MconnEnvelope>> mconnConnectorTelemetryEventsGet({required MconnAccountId accountId, required String connectorId, required double eventT, required double eventN, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/connectors/${Uri.encodeComponent(connectorId)}/telemetry/events/${Uri.encodeComponent(eventT.toString())}.${Uri.encodeComponent(eventN.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MconnCustomerEventGetSuccess.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return MconnEnvelope.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get latest Events
///
/// `GET /accounts/{account_id}/magic/connectors/{connector_id}/telemetry/events/latest`
Future<ApiResult<MconnCustomerEventsGetLatestSuccess, MconnEnvelope>> mconnConnectorTelemetryEventsListLatest({required MconnAccountId accountId, required String connectorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/connectors/${Uri.encodeComponent(connectorId)}/telemetry/events/latest',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MconnCustomerEventsGetLatestSuccess.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return MconnEnvelope.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Snapshots
///
/// `GET /accounts/{account_id}/magic/connectors/{connector_id}/telemetry/snapshots`
Future<ApiResult<MconnCustomerSnapshotsGetSuccess, MconnEnvelope>> mconnConnectorTelemetrySnapshotsList({required MconnAccountId accountId, required String connectorId, required double from, required double to, double? limit, String? cursor, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['from'] = from.toString();
queryParameters['to'] = to.toString();
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/connectors/${Uri.encodeComponent(connectorId)}/telemetry/snapshots',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MconnCustomerSnapshotsGetSuccess.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return MconnEnvelope.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Snapshot
///
/// `GET /accounts/{account_id}/magic/connectors/{connector_id}/telemetry/snapshots/{snapshot_t}`
Future<ApiResult<MconnCustomerSnapshotGetSuccess, MconnEnvelope>> mconnConnectorTelemetrySnapshotsGet({required MconnAccountId accountId, required String connectorId, required double snapshotT, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/connectors/${Uri.encodeComponent(connectorId)}/telemetry/snapshots/${Uri.encodeComponent(snapshotT.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MconnCustomerSnapshotGetSuccess.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return MconnEnvelope.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get latest Snapshots
///
/// `GET /accounts/{account_id}/magic/connectors/{connector_id}/telemetry/snapshots/latest`
Future<ApiResult<MconnCustomerSnapshotsGetLatestSuccess, MconnEnvelope>> mconnConnectorTelemetrySnapshotsListLatest({required MconnAccountId accountId, required String connectorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/connectors/${Uri.encodeComponent(connectorId)}/telemetry/snapshots/latest',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MconnCustomerSnapshotsGetLatestSuccess.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return MconnEnvelope.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
