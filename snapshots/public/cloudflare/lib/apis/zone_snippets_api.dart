// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_zone_snippet_response4_xx.dart';import '../models/delete_zone_snippet_response5_xx.dart';import '../models/delete_zone_snippet_rules_response4_xx.dart';import '../models/delete_zone_snippet_rules_response5_xx.dart';import '../models/get_zone_snippet_content_response4_xx.dart';import '../models/get_zone_snippet_content_response5_xx.dart';import '../models/get_zone_snippet_response4_xx.dart';import '../models/get_zone_snippet_response5_xx.dart';import '../models/list_zone_snippet_rules_response4_xx.dart';import '../models/list_zone_snippet_rules_response5_xx.dart';import '../models/list_zone_snippets_response4_xx.dart';import '../models/list_zone_snippets_response5_xx.dart';import '../models/snippets_page.dart';import '../models/snippets_per_page.dart';import '../models/snippets_snippet.dart';import '../models/snippets_snippet_name.dart';import '../models/snippets_snippet_rules2.dart';import '../models/snippets_zone_id.dart';import '../models/update_zone_snippet_request.dart';import '../models/update_zone_snippet_response4_xx.dart';import '../models/update_zone_snippet_response5_xx.dart';import '../models/update_zone_snippet_rules_request.dart';import '../models/update_zone_snippet_rules_response4_xx.dart';import '../models/update_zone_snippet_rules_response5_xx.dart';/// ZoneSnippetsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneSnippetsApi with ApiExecutor {const ZoneSnippetsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List zone snippets
///
/// Fetches all snippets belonging to the zone.
///
/// `GET /zones/{zone_id}/snippets`
Future<ApiResult<List<SnippetsSnippet>, OneOf2<ListZoneSnippetsResponse4Xx, ListZoneSnippetsResponse5Xx>>> listZoneSnippets({required SnippetsZoneId zoneId, SnippetsPage? page, SnippetsPerPage? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/snippets',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => SnippetsSnippet.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<ListZoneSnippetsResponse4Xx, ListZoneSnippetsResponse5Xx>.a(ListZoneSnippetsResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<ListZoneSnippetsResponse4Xx, ListZoneSnippetsResponse5Xx>.b(ListZoneSnippetsResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get a zone snippet
///
/// Fetches a snippet belonging to the zone.
///
/// `GET /zones/{zone_id}/snippets/{snippet_name}`
Future<ApiResult<SnippetsSnippet, OneOf2<GetZoneSnippetResponse4Xx, GetZoneSnippetResponse5Xx>>> getZoneSnippet({required SnippetsZoneId zoneId, required SnippetsSnippetName snippetName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/snippets/${Uri.encodeComponent(snippetName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return SnippetsSnippet.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<GetZoneSnippetResponse4Xx, GetZoneSnippetResponse5Xx>.a(GetZoneSnippetResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<GetZoneSnippetResponse4Xx, GetZoneSnippetResponse5Xx>.b(GetZoneSnippetResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Update a zone snippet
///
/// Creates or updates a snippet belonging to the zone.
///
/// `PUT /zones/{zone_id}/snippets/{snippet_name}`
Future<ApiResult<SnippetsSnippet, OneOf2<UpdateZoneSnippetResponse4Xx, UpdateZoneSnippetResponse5Xx>>> updateZoneSnippet({required SnippetsZoneId zoneId, required SnippetsSnippetName snippetName, required UpdateZoneSnippetRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/snippets/${Uri.encodeComponent(snippetName.toString())}',
  headers: headers,
  body: [
    ApiMultipartField.text('metadata', body.metadata.toString()),
  ],
  contentType: 'multipart/form-data',
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return SnippetsSnippet.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<UpdateZoneSnippetResponse4Xx, UpdateZoneSnippetResponse5Xx>.a(UpdateZoneSnippetResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<UpdateZoneSnippetResponse4Xx, UpdateZoneSnippetResponse5Xx>.b(UpdateZoneSnippetResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Delete a zone snippet
///
/// Deletes a snippet belonging to the zone.
///
/// `DELETE /zones/{zone_id}/snippets/{snippet_name}`
Future<ApiResult<Map<String, dynamic>?, OneOf2<DeleteZoneSnippetResponse4Xx, DeleteZoneSnippetResponse5Xx>>> deleteZoneSnippet({required SnippetsZoneId zoneId, required SnippetsSnippetName snippetName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/snippets/${Uri.encodeComponent(snippetName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<DeleteZoneSnippetResponse4Xx, DeleteZoneSnippetResponse5Xx>.a(DeleteZoneSnippetResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<DeleteZoneSnippetResponse4Xx, DeleteZoneSnippetResponse5Xx>.b(DeleteZoneSnippetResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get a zone snippet content
///
/// Fetches the content of a snippet belonging to the zone.
///
/// `GET /zones/{zone_id}/snippets/{snippet_name}/content`
Future<ApiResult<Map<String, List<Uint8List>>, OneOf2<GetZoneSnippetContentResponse4Xx, GetZoneSnippetContentResponse5Xx>>> getZoneSnippetContent({required SnippetsZoneId zoneId, required SnippetsSnippetName snippetName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/snippets/${Uri.encodeComponent(snippetName.toString())}/content',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
// TODO: Unsupported non-JSON response schema Cannot decode multipart/form-data response into Map<String, List<Uint8List>>
throw UnsupportedError('Cannot decode multipart/form-data response into Map<String, List<Uint8List>>');
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<GetZoneSnippetContentResponse4Xx, GetZoneSnippetContentResponse5Xx>.a(GetZoneSnippetContentResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<GetZoneSnippetContentResponse4Xx, GetZoneSnippetContentResponse5Xx>.b(GetZoneSnippetContentResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// List zone snippet rules
///
/// Fetches all snippet rules belonging to the zone.
///
/// `GET /zones/{zone_id}/snippets/snippet_rules`
Future<ApiResult<List<SnippetsSnippetRules2>, OneOf2<ListZoneSnippetRulesResponse4Xx, ListZoneSnippetRulesResponse5Xx>>> listZoneSnippetRules({required SnippetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/snippets/snippet_rules',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => SnippetsSnippetRules2.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<ListZoneSnippetRulesResponse4Xx, ListZoneSnippetRulesResponse5Xx>.a(ListZoneSnippetRulesResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<ListZoneSnippetRulesResponse4Xx, ListZoneSnippetRulesResponse5Xx>.b(ListZoneSnippetRulesResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Update zone snippet rules
///
/// Updates all snippet rules belonging to the zone.
///
/// `PUT /zones/{zone_id}/snippets/snippet_rules`
Future<ApiResult<List<SnippetsSnippetRules2>, OneOf2<UpdateZoneSnippetRulesResponse4Xx, UpdateZoneSnippetRulesResponse5Xx>>> updateZoneSnippetRules({required SnippetsZoneId zoneId, required UpdateZoneSnippetRulesRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/snippets/snippet_rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => SnippetsSnippetRules2.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<UpdateZoneSnippetRulesResponse4Xx, UpdateZoneSnippetRulesResponse5Xx>.a(UpdateZoneSnippetRulesResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<UpdateZoneSnippetRulesResponse4Xx, UpdateZoneSnippetRulesResponse5Xx>.b(UpdateZoneSnippetRulesResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Delete zone snippet rules
///
/// Deletes all snippet rules belonging to the zone.
///
/// `DELETE /zones/{zone_id}/snippets/snippet_rules`
Future<ApiResult<List<SnippetsSnippetRules2>, OneOf2<DeleteZoneSnippetRulesResponse4Xx, DeleteZoneSnippetRulesResponse5Xx>>> deleteZoneSnippetRules({required SnippetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/snippets/snippet_rules',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => SnippetsSnippetRules2.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<DeleteZoneSnippetRulesResponse4Xx, DeleteZoneSnippetRulesResponse5Xx>.a(DeleteZoneSnippetRulesResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<DeleteZoneSnippetRulesResponse4Xx, DeleteZoneSnippetRulesResponse5Xx>.b(DeleteZoneSnippetRulesResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
 }
