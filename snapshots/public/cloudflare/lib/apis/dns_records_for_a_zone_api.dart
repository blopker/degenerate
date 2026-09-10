// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dns_records_direction.dart';import '../models/dns_records_dns_record_patch_request.dart';import '../models/dns_records_dns_record_post_request.dart';import '../models/dns_records_dns_request_batch_object_request.dart';import '../models/dns_records_dns_request_review_scan_object_request.dart';import '../models/dns_records_dns_response_batch_object.dart';import '../models/dns_records_dns_response_import_scan_result.dart';import '../models/dns_records_dns_response_review_scan_object.dart';import '../models/dns_records_dns_response_zone_usage_result.dart';import '../models/dns_records_for_a_zone_create_dns_record_response4_xx.dart';import '../models/dns_records_for_a_zone_delete_dns_record_response4_xx.dart';import '../models/dns_records_for_a_zone_delete_dns_record_response_result.dart';import '../models/dns_records_for_a_zone_dns_record_details_response4_xx.dart';import '../models/dns_records_for_a_zone_get_usage_response4_xx.dart';import '../models/dns_records_for_a_zone_import_dns_records_request.dart';import '../models/dns_records_for_a_zone_import_dns_records_response4_xx.dart';import '../models/dns_records_for_a_zone_list_dns_records_response4_xx.dart';import '../models/dns_records_for_a_zone_patch_dns_record_response4_xx.dart';import '../models/dns_records_for_a_zone_trigger_dns_scan_response4_xx.dart';import '../models/dns_records_for_a_zone_update_dns_record_response4_xx.dart';import '../models/dns_records_identifier.dart';import '../models/dns_records_match.dart';import '../models/dns_records_order.dart';import '../models/dns_records_page.dart';import '../models/dns_records_per_page.dart';import '../models/dns_records_proxied.dart';import '../models/dns_records_search.dart';import '../models/dns_records_tag_match.dart';import '../models/dns_records_type.dart';import '../models/response_common25.dart';import '../models/response_common_failure30.dart';/// DnsRecordsForAZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DnsRecordsForAZoneApi with ApiExecutor {const DnsRecordsForAZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List DNS Records
///
/// List, search, sort, and filter a zones' DNS records.
///
/// `GET /zones/{zone_id}/dns_records`
Future<ApiResult<List<Map<String, dynamic>>?, DnsRecordsForAZoneListDnsRecordsResponse4Xx>> dnsRecordsForAZoneListDnsRecords({required DnsRecordsIdentifier zoneId, String? contentEndswith, String? nameExact, String? nameContains, String? nameStartswith, String? nameEndswith, DnsRecordsType? type, String? content, String? contentExact, String? contentContains, String? contentStartswith, String? name, DnsRecordsProxied? proxied, DnsRecordsMatch? match, String? comment, String? commentPresent, String? commentAbsent, String? commentExact, String? commentContains, String? commentStartswith, String? commentEndswith, DnsRecordsDirection? direction, String? tagPresent, String? tagAbsent, String? tagExact, String? tagContains, String? tagStartswith, String? tagEndswith, DnsRecordsSearch? search, DnsRecordsTagMatch? tagMatch, DnsRecordsPage? page, DnsRecordsPerPage? perPage, DnsRecordsOrder? order, String? tag, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
  queryParameters['name'] = name;
}
if (nameExact != null) {
  queryParameters['name.exact'] = nameExact;
}
if (nameContains != null) {
  queryParameters['name.contains'] = nameContains;
}
if (nameStartswith != null) {
  queryParameters['name.startswith'] = nameStartswith;
}
if (nameEndswith != null) {
  queryParameters['name.endswith'] = nameEndswith;
}
if (type != null) {
  queryParameters['type'] = type.toJson();
}
if (content != null) {
  queryParameters['content'] = content;
}
if (contentExact != null) {
  queryParameters['content.exact'] = contentExact;
}
if (contentContains != null) {
  queryParameters['content.contains'] = contentContains;
}
if (contentStartswith != null) {
  queryParameters['content.startswith'] = contentStartswith;
}
if (contentEndswith != null) {
  queryParameters['content.endswith'] = contentEndswith;
}
if (proxied != null) {
  queryParameters['proxied'] = proxied.toString();
}
if (match != null) {
  queryParameters['match'] = match.toJson();
}
if (comment != null) {
  queryParameters['comment'] = comment;
}
if (commentPresent != null) {
  queryParameters['comment.present'] = commentPresent;
}
if (commentAbsent != null) {
  queryParameters['comment.absent'] = commentAbsent;
}
if (commentExact != null) {
  queryParameters['comment.exact'] = commentExact;
}
if (commentContains != null) {
  queryParameters['comment.contains'] = commentContains;
}
if (commentStartswith != null) {
  queryParameters['comment.startswith'] = commentStartswith;
}
if (commentEndswith != null) {
  queryParameters['comment.endswith'] = commentEndswith;
}
if (tag != null) {
  queryParameters['tag'] = tag;
}
if (tagPresent != null) {
  queryParameters['tag.present'] = tagPresent;
}
if (tagAbsent != null) {
  queryParameters['tag.absent'] = tagAbsent;
}
if (tagExact != null) {
  queryParameters['tag.exact'] = tagExact;
}
if (tagContains != null) {
  queryParameters['tag.contains'] = tagContains;
}
if (tagStartswith != null) {
  queryParameters['tag.startswith'] = tagStartswith;
}
if (tagEndswith != null) {
  queryParameters['tag.endswith'] = tagEndswith;
}
if (search != null) {
  queryParameters['search'] = search.toString();
}
if (tagMatch != null) {
  queryParameters['tag_match'] = tagMatch.toJson();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_records',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => e as Map<String, dynamic>).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsRecordsForAZoneListDnsRecordsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create DNS Record
///
/// Create a new DNS record for a zone.
/// 
/// Notes:
/// - A/AAAA records cannot exist on the same name as CNAME records.
/// - NS records cannot exist on the same name as any other record type.
/// - Domain names are always represented in Punycode, even if Unicode
///   characters were used when creating the record.
/// 
///
/// `POST /zones/{zone_id}/dns_records`
Future<ApiResult<Map<String, dynamic>?, DnsRecordsForAZoneCreateDnsRecordResponse4Xx>> dnsRecordsForAZoneCreateDnsRecord({required DnsRecordsIdentifier zoneId, required DnsRecordsDnsRecordPostRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_records',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsRecordsForAZoneCreateDnsRecordResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// DNS Record Details
///
/// `GET /zones/{zone_id}/dns_records/{dns_record_id}`
Future<ApiResult<Map<String, dynamic>?, DnsRecordsForAZoneDnsRecordDetailsResponse4Xx>> dnsRecordsForAZoneDnsRecordDetails({required DnsRecordsIdentifier dnsRecordId, required DnsRecordsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_records/${Uri.encodeComponent(dnsRecordId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsRecordsForAZoneDnsRecordDetailsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Overwrite DNS Record
///
/// Overwrite an existing DNS record.
/// 
/// Notes:
/// - A/AAAA records cannot exist on the same name as CNAME records.
/// - NS records cannot exist on the same name as any other record type.
/// - Domain names are always represented in Punycode, even if Unicode
///   characters were used when creating the record.
/// 
///
/// `PUT /zones/{zone_id}/dns_records/{dns_record_id}`
Future<ApiResult<Map<String, dynamic>?, DnsRecordsForAZoneUpdateDnsRecordResponse4Xx>> dnsRecordsForAZoneUpdateDnsRecord({required DnsRecordsIdentifier dnsRecordId, required DnsRecordsIdentifier zoneId, required DnsRecordsDnsRecordPostRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_records/${Uri.encodeComponent(dnsRecordId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsRecordsForAZoneUpdateDnsRecordResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update DNS Record
///
/// Update an existing DNS record.
/// 
/// Notes:
/// - A/AAAA records cannot exist on the same name as CNAME records.
/// - NS records cannot exist on the same name as any other record type.
/// - Domain names are always represented in Punycode, even if Unicode
///   characters were used when creating the record.
/// 
///
/// `PATCH /zones/{zone_id}/dns_records/{dns_record_id}`
Future<ApiResult<Map<String, dynamic>?, DnsRecordsForAZonePatchDnsRecordResponse4Xx>> dnsRecordsForAZonePatchDnsRecord({required DnsRecordsIdentifier dnsRecordId, required DnsRecordsIdentifier zoneId, required DnsRecordsDnsRecordPatchRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_records/${Uri.encodeComponent(dnsRecordId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsRecordsForAZonePatchDnsRecordResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete DNS Record
///
/// `DELETE /zones/{zone_id}/dns_records/{dns_record_id}`
Future<ApiResult<DnsRecordsForAZoneDeleteDnsRecordResponseResult?, DnsRecordsForAZoneDeleteDnsRecordResponse4Xx>> dnsRecordsForAZoneDeleteDnsRecord({required DnsRecordsIdentifier dnsRecordId, required DnsRecordsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_records/${Uri.encodeComponent(dnsRecordId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? DnsRecordsForAZoneDeleteDnsRecordResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsRecordsForAZoneDeleteDnsRecordResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Batch DNS Records
///
/// Send a Batch of DNS Record API calls to be executed together.
/// 
/// Notes:
/// - Although Cloudflare will execute the batched operations in a single database transaction, Cloudflare's distributed KV store must treat each record change as a single key-value pair. This means that the propagation of changes is not atomic. See [the documentation](https://developers.cloudflare.com/dns/manage-dns-records/how-to/batch-record-changes/ "Batch DNS records") for more information.
/// - The operations you specify within the /batch request body are always executed in the following order:
/// 
///     - Deletes
///     - Patches
///     - Puts
///     - Posts
/// 
///
/// `POST /zones/{zone_id}/dns_records/batch`
Future<ApiResult<DnsRecordsDnsResponseBatchObject?, ResponseCommonFailure30>> dnsRecordsForAZoneBatchDnsRecords({required DnsRecordsIdentifier zoneId, required DnsRecordsDnsRequestBatchObjectRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_records/batch',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? DnsRecordsDnsResponseBatchObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure30.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Export DNS Records
///
/// You can export your [BIND config](https://en.wikipedia.org/wiki/Zone_file "Zone file") through this endpoint.
/// 
/// See [the documentation](https://developers.cloudflare.com/dns/manage-dns-records/how-to/import-and-export/ "Import and export records") for more information.
///
/// `GET /zones/{zone_id}/dns_records/export`
Future<ApiResult<String, ResponseCommonFailure30>> dnsRecordsForAZoneExportDnsRecords({required DnsRecordsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_records/export',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
return response.body;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure30.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Import DNS Records
///
/// You can upload your [BIND config](https://en.wikipedia.org/wiki/Zone_file "Zone file") through this endpoint. It assumes that cURL is called from a location with bind_config.txt (valid BIND config) present.
/// 
/// See [the documentation](https://developers.cloudflare.com/dns/manage-dns-records/how-to/import-and-export/ "Import and export records") for more information.
///
/// `POST /zones/{zone_id}/dns_records/import`
Future<ApiResult<DnsRecordsDnsResponseImportScanResult?, DnsRecordsForAZoneImportDnsRecordsResponse4Xx>> dnsRecordsForAZoneImportDnsRecords({required DnsRecordsIdentifier zoneId, required DnsRecordsForAZoneImportDnsRecordsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_records/import',
  headers: headers,
  body: [
    ApiMultipartField.text('file', body.file),
    if (body.proxied case final proxied$?)
      ApiMultipartField.text('proxied', proxied$),
  ],
  contentType: 'multipart/form-data',
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? DnsRecordsDnsResponseImportScanResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsRecordsForAZoneImportDnsRecordsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List Scanned DNS Records
///
/// Retrieves the list of DNS records discovered up to this point by the asynchronous scan. These records are temporary until explicitly accepted or rejected via `POST /scan/review`. Additional records may be discovered by the scan later.
/// 
///
/// `GET /zones/{zone_id}/dns_records/scan/review`
Future<ApiResult<List<Map<String, dynamic>>?, ResponseCommonFailure30>> dnsRecordsForAZoneReviewDnsScan({required DnsRecordsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_records/scan/review',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => e as Map<String, dynamic>).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure30.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Review Scanned DNS Records
///
/// Accept or reject DNS records found by the DNS records scan. Accepted records will be permanently added to the zone, while rejected records will be permanently deleted.
/// 
///
/// `POST /zones/{zone_id}/dns_records/scan/review`
Future<ApiResult<DnsRecordsDnsResponseReviewScanObject?, ResponseCommonFailure30>> dnsRecordsForAZoneApplyDnsScanResults({required DnsRecordsIdentifier zoneId, required DnsRecordsDnsRequestReviewScanObjectRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_records/scan/review',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? DnsRecordsDnsResponseReviewScanObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure30.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Trigger DNS Record Scan
///
/// Initiates an asynchronous scan for common DNS records on your domain. Note that this **does not** automatically add records to your zone. The scan runs in the background, and results can be reviewed later using the `/scan/review` endpoints. Useful if you haven't updated your nameservers yet.
///
/// `POST /zones/{zone_id}/dns_records/scan/trigger`
Future<ApiResult<ResponseCommon25, DnsRecordsForAZoneTriggerDnsScanResponse4Xx>> dnsRecordsForAZoneTriggerDnsScan({required DnsRecordsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_records/scan/trigger',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return ResponseCommon25.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsRecordsForAZoneTriggerDnsScanResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get DNS Record Usage
///
/// Get the current DNS record usage for a zone, including the number of records and the quota limit.
///
/// `GET /zones/{zone_id}/dns_records/usage`
Future<ApiResult<DnsRecordsDnsResponseZoneUsageResult?, DnsRecordsForAZoneGetUsageResponse4Xx>> dnsRecordsForAZoneGetUsage({required DnsRecordsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/dns_records/usage',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? DnsRecordsDnsResponseZoneUsageResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsRecordsForAZoneGetUsageResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
