// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';/// InventoryApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class InventoryApi with ApiExecutor {const InventoryApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieves a list of inventory items. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#index-2020-01
///
/// `GET /admin/api/2020-01/inventory_items.json`
Future<ApiResult<void, Never>> deprecated202001GetInventoryItems({dynamic idsRequired, dynamic limit, int? ids, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (idsRequired != null) queryParameters['ids required'] = idsRequired.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (ids != null) queryParameters['ids'] = ids.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/inventory_items.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single inventory item by ID
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#show-2020-01
///
/// `GET /admin/api/2020-01/inventory_items/{inventory_item_id}.json`
Future<ApiResult<void, Never>> deprecated202001GetInventoryItemsParamInventoryItemId({required String inventoryItemId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/inventory_items/${Uri.encodeComponent(inventoryItemId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates an existing inventory item
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#update-2020-01
///
/// `PUT /admin/api/2020-01/inventory_items/{inventory_item_id}.json`
Future<ApiResult<void, Never>> deprecated202001UpdateInventoryItemsParamInventoryItemId({required String inventoryItemId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-01/inventory_items/${Uri.encodeComponent(inventoryItemId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory items. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#index-2020-04
///
/// `GET /admin/api/2020-04/inventory_items.json`
Future<ApiResult<void, Never>> deprecated202004GetInventoryItems({dynamic idsRequired, dynamic limit, int? ids, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (idsRequired != null) queryParameters['ids required'] = idsRequired.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (ids != null) queryParameters['ids'] = ids.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/inventory_items.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single inventory item by ID
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#show-2020-04
///
/// `GET /admin/api/2020-04/inventory_items/{inventory_item_id}.json`
Future<ApiResult<void, Never>> deprecated202004GetInventoryItemsParamInventoryItemId({required String inventoryItemId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/inventory_items/${Uri.encodeComponent(inventoryItemId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates an existing inventory item
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#update-2020-04
///
/// `PUT /admin/api/2020-04/inventory_items/{inventory_item_id}.json`
Future<ApiResult<void, Never>> deprecated202004UpdateInventoryItemsParamInventoryItemId({required String inventoryItemId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-04/inventory_items/${Uri.encodeComponent(inventoryItemId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory items. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#index-2020-07
///
/// `GET /admin/api/2020-07/inventory_items.json`
Future<ApiResult<void, Never>> deprecated202007GetInventoryItems({dynamic idsRequired, dynamic limit, int? ids, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (idsRequired != null) queryParameters['ids required'] = idsRequired.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (ids != null) queryParameters['ids'] = ids.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/inventory_items.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single inventory item by ID
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#show-2020-07
///
/// `GET /admin/api/2020-07/inventory_items/{inventory_item_id}.json`
Future<ApiResult<void, Never>> deprecated202007GetInventoryItemsParamInventoryItemId({required String inventoryItemId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/inventory_items/${Uri.encodeComponent(inventoryItemId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates an existing inventory item
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#update-2020-07
///
/// `PUT /admin/api/2020-07/inventory_items/{inventory_item_id}.json`
Future<ApiResult<void, Never>> deprecated202007UpdateInventoryItemsParamInventoryItemId({required String inventoryItemId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-07/inventory_items/${Uri.encodeComponent(inventoryItemId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory items. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#index-2020-10
///
/// `GET /admin/api/2020-10/inventory_items.json`
Future<ApiResult<void, Never>> getInventoryItems({dynamic idsRequired, dynamic limit, int? ids, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (idsRequired != null) queryParameters['ids required'] = idsRequired.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (ids != null) queryParameters['ids'] = ids.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/inventory_items.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single inventory item by ID
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#show-2020-10
///
/// `GET /admin/api/2020-10/inventory_items/{inventory_item_id}.json`
Future<ApiResult<void, Never>> getInventoryItemsParamInventoryItemId({required String inventoryItemId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/inventory_items/${Uri.encodeComponent(inventoryItemId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates an existing inventory item
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#update-2020-10
///
/// `PUT /admin/api/2020-10/inventory_items/{inventory_item_id}.json`
Future<ApiResult<void, Never>> updateInventoryItemsParamInventoryItemId({required String inventoryItemId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-10/inventory_items/${Uri.encodeComponent(inventoryItemId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory items. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#index-2021-01
///
/// `GET /admin/api/2021-01/inventory_items.json`
Future<ApiResult<void, Never>> deprecated202101GetInventoryItems({dynamic idsRequired, dynamic limit, int? ids, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (idsRequired != null) queryParameters['ids required'] = idsRequired.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (ids != null) queryParameters['ids'] = ids.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/inventory_items.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single inventory item by ID
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#show-2021-01
///
/// `GET /admin/api/2021-01/inventory_items/{inventory_item_id}.json`
Future<ApiResult<void, Never>> deprecated202101GetInventoryItemsParamInventoryItemId({required String inventoryItemId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/inventory_items/${Uri.encodeComponent(inventoryItemId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates an existing inventory item
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#update-2021-01
///
/// `PUT /admin/api/2021-01/inventory_items/{inventory_item_id}.json`
Future<ApiResult<void, Never>> deprecated202101UpdateInventoryItemsParamInventoryItemId({required String inventoryItemId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2021-01/inventory_items/${Uri.encodeComponent(inventoryItemId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory items. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#index-unstable
///
/// `GET /admin/api/unstable/inventory_items.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetInventoryItems({dynamic idsRequired, dynamic limit, int? ids, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (idsRequired != null) queryParameters['ids required'] = idsRequired.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (ids != null) queryParameters['ids'] = ids.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/inventory_items.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single inventory item by ID
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#show-unstable
///
/// `GET /admin/api/unstable/inventory_items/{inventory_item_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetInventoryItemsParamInventoryItemId({required String inventoryItemId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/inventory_items/${Uri.encodeComponent(inventoryItemId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates an existing inventory item
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventoryitem#update-unstable
///
/// `PUT /admin/api/unstable/inventory_items/{inventory_item_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableUpdateInventoryItemsParamInventoryItemId({required String inventoryItemId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/unstable/inventory_items/${Uri.encodeComponent(inventoryItemId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory levels.
///           You must include inventory_item_ids, location_ids, or both as filter parameters.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#index-2020-01
///
/// `GET /admin/api/2020-01/inventory_levels.json`
Future<ApiResult<void, Never>> deprecated202001GetInventoryLevels({dynamic inventoryItemIds, dynamic locationIds, dynamic limit, dynamic updatedAtMin, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIds != null) queryParameters['inventory_item_ids'] = inventoryItemIds.toString();
if (locationIds != null) queryParameters['location_ids'] = locationIds.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (updatedAtMin != null) queryParameters['updated_at_min'] = updatedAtMin.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/inventory_levels.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes an inventory level of an inventory item at a location.
///           Deleting an inventory level for an inventory item removes that item from the specified location.
///           Every inventory item must have at least one inventory level. To move inventory to another location,
///           first connect the inventory item to another location, and then delete the previous inventory level.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#destroy-2020-01
///
/// `DELETE /admin/api/2020-01/inventory_levels.json`
Future<ApiResult<void, Never>> deprecated202001DeleteInventoryLevels({dynamic inventoryItemIdRequired, dynamic locationIdRequired, int? inventoryItemId, int? locationId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (inventoryItemId != null) queryParameters['inventory_item_id'] = inventoryItemId.toString();
if (locationId != null) queryParameters['location_id'] = locationId.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-01/inventory_levels.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Adjusts the inventory level of an inventory item at a single location
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#adjust-2020-01
///
/// `POST /admin/api/2020-01/inventory_levels/adjust.json`
Future<ApiResult<void, Never>> deprecated202001CreateInventoryLevelsAdjust({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic availableAdjustmentRequired, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (availableAdjustmentRequired != null) queryParameters['available_adjustment required'] = availableAdjustmentRequired.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/inventory_levels/adjust.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Connects an inventory item to a location by creating an inventory level at that location.
///         When connecting inventory items to locations, it's important to understand the rules around
///         fulfillment service locations.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#connect-2020-01
///
/// `POST /admin/api/2020-01/inventory_levels/connect.json`
Future<ApiResult<void, Never>> deprecated202001CreateInventoryLevelsConnect({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic relocateIfNecessary, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (relocateIfNecessary != null) queryParameters['relocate_if_necessary'] = relocateIfNecessary.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/inventory_levels/connect.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Sets the inventory level for an inventory item at a location.
///           If the specified location is not connected, it will be automatically connected first.
///           When connecting inventory items to locations, it's important to understand the rules around
///           fulfillment service locations.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#set-2020-01
///
/// `POST /admin/api/2020-01/inventory_levels/set.json`
Future<ApiResult<void, Never>> deprecated202001CreateInventoryLevelsSet({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic availableRequired, dynamic disconnectIfNecessary, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (availableRequired != null) queryParameters['available required'] = availableRequired.toString();
if (disconnectIfNecessary != null) queryParameters['disconnect_if_necessary'] = disconnectIfNecessary.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/inventory_levels/set.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory levels.
///           You must include inventory_item_ids, location_ids, or both as filter parameters.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#index-2020-04
///
/// `GET /admin/api/2020-04/inventory_levels.json`
Future<ApiResult<void, Never>> deprecated202004GetInventoryLevels({dynamic inventoryItemIds, dynamic locationIds, dynamic limit, dynamic updatedAtMin, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIds != null) queryParameters['inventory_item_ids'] = inventoryItemIds.toString();
if (locationIds != null) queryParameters['location_ids'] = locationIds.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (updatedAtMin != null) queryParameters['updated_at_min'] = updatedAtMin.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/inventory_levels.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes an inventory level of an inventory item at a location.
///           Deleting an inventory level for an inventory item removes that item from the specified location.
///           Every inventory item must have at least one inventory level. To move inventory to another location,
///           first connect the inventory item to another location, and then delete the previous inventory level.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#destroy-2020-04
///
/// `DELETE /admin/api/2020-04/inventory_levels.json`
Future<ApiResult<void, Never>> deprecated202004DeleteInventoryLevels({dynamic inventoryItemIdRequired, dynamic locationIdRequired, int? inventoryItemId, int? locationId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (inventoryItemId != null) queryParameters['inventory_item_id'] = inventoryItemId.toString();
if (locationId != null) queryParameters['location_id'] = locationId.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-04/inventory_levels.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Adjusts the inventory level of an inventory item at a single location
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#adjust-2020-04
///
/// `POST /admin/api/2020-04/inventory_levels/adjust.json`
Future<ApiResult<void, Never>> deprecated202004CreateInventoryLevelsAdjust({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic availableAdjustmentRequired, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (availableAdjustmentRequired != null) queryParameters['available_adjustment required'] = availableAdjustmentRequired.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/inventory_levels/adjust.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Connects an inventory item to a location by creating an inventory level at that location.
///         When connecting inventory items to locations, it's important to understand the rules around
///         fulfillment service locations.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#connect-2020-04
///
/// `POST /admin/api/2020-04/inventory_levels/connect.json`
Future<ApiResult<void, Never>> deprecated202004CreateInventoryLevelsConnect({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic relocateIfNecessary, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (relocateIfNecessary != null) queryParameters['relocate_if_necessary'] = relocateIfNecessary.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/inventory_levels/connect.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Sets the inventory level for an inventory item at a location.
///           If the specified location is not connected, it will be automatically connected first.
///           When connecting inventory items to locations, it's important to understand the rules around
///           fulfillment service locations.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#set-2020-04
///
/// `POST /admin/api/2020-04/inventory_levels/set.json`
Future<ApiResult<void, Never>> deprecated202004CreateInventoryLevelsSet({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic availableRequired, dynamic disconnectIfNecessary, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (availableRequired != null) queryParameters['available required'] = availableRequired.toString();
if (disconnectIfNecessary != null) queryParameters['disconnect_if_necessary'] = disconnectIfNecessary.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/inventory_levels/set.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory levels.
///           You must include inventory_item_ids, location_ids, or both as filter parameters.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#index-2020-07
///
/// `GET /admin/api/2020-07/inventory_levels.json`
Future<ApiResult<void, Never>> deprecated202007GetInventoryLevels({dynamic inventoryItemIds, dynamic locationIds, dynamic limit, dynamic updatedAtMin, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIds != null) queryParameters['inventory_item_ids'] = inventoryItemIds.toString();
if (locationIds != null) queryParameters['location_ids'] = locationIds.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (updatedAtMin != null) queryParameters['updated_at_min'] = updatedAtMin.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/inventory_levels.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes an inventory level of an inventory item at a location.
///           Deleting an inventory level for an inventory item removes that item from the specified location.
///           Every inventory item must have at least one inventory level. To move inventory to another location,
///           first connect the inventory item to another location, and then delete the previous inventory level.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#destroy-2020-07
///
/// `DELETE /admin/api/2020-07/inventory_levels.json`
Future<ApiResult<void, Never>> deprecated202007DeleteInventoryLevels({dynamic inventoryItemIdRequired, dynamic locationIdRequired, int? inventoryItemId, int? locationId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (inventoryItemId != null) queryParameters['inventory_item_id'] = inventoryItemId.toString();
if (locationId != null) queryParameters['location_id'] = locationId.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-07/inventory_levels.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Adjusts the inventory level of an inventory item at a single location
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#adjust-2020-07
///
/// `POST /admin/api/2020-07/inventory_levels/adjust.json`
Future<ApiResult<void, Never>> deprecated202007CreateInventoryLevelsAdjust({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic availableAdjustmentRequired, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (availableAdjustmentRequired != null) queryParameters['available_adjustment required'] = availableAdjustmentRequired.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/inventory_levels/adjust.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Connects an inventory item to a location by creating an inventory level at that location.
///         When connecting inventory items to locations, it's important to understand the rules around
///         fulfillment service locations.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#connect-2020-07
///
/// `POST /admin/api/2020-07/inventory_levels/connect.json`
Future<ApiResult<void, Never>> deprecated202007CreateInventoryLevelsConnect({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic relocateIfNecessary, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (relocateIfNecessary != null) queryParameters['relocate_if_necessary'] = relocateIfNecessary.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/inventory_levels/connect.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Sets the inventory level for an inventory item at a location.
///           If the specified location is not connected, it will be automatically connected first.
///           When connecting inventory items to locations, it's important to understand the rules around
///           fulfillment service locations.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#set-2020-07
///
/// `POST /admin/api/2020-07/inventory_levels/set.json`
Future<ApiResult<void, Never>> deprecated202007CreateInventoryLevelsSet({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic availableRequired, dynamic disconnectIfNecessary, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (availableRequired != null) queryParameters['available required'] = availableRequired.toString();
if (disconnectIfNecessary != null) queryParameters['disconnect_if_necessary'] = disconnectIfNecessary.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/inventory_levels/set.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory levels.
///           You must include inventory_item_ids, location_ids, or both as filter parameters.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#index-2020-10
///
/// `GET /admin/api/2020-10/inventory_levels.json`
Future<ApiResult<void, Never>> getInventoryLevels({dynamic inventoryItemIds, dynamic locationIds, dynamic limit, dynamic updatedAtMin, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIds != null) queryParameters['inventory_item_ids'] = inventoryItemIds.toString();
if (locationIds != null) queryParameters['location_ids'] = locationIds.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (updatedAtMin != null) queryParameters['updated_at_min'] = updatedAtMin.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/inventory_levels.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes an inventory level of an inventory item at a location.
///           Deleting an inventory level for an inventory item removes that item from the specified location.
///           Every inventory item must have at least one inventory level. To move inventory to another location,
///           first connect the inventory item to another location, and then delete the previous inventory level.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#destroy-2020-10
///
/// `DELETE /admin/api/2020-10/inventory_levels.json`
Future<ApiResult<void, Never>> deleteInventoryLevels({dynamic inventoryItemIdRequired, dynamic locationIdRequired, int? inventoryItemId, int? locationId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (inventoryItemId != null) queryParameters['inventory_item_id'] = inventoryItemId.toString();
if (locationId != null) queryParameters['location_id'] = locationId.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-10/inventory_levels.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Adjusts the inventory level of an inventory item at a single location
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#adjust-2020-10
///
/// `POST /admin/api/2020-10/inventory_levels/adjust.json`
Future<ApiResult<void, Never>> createInventoryLevelsAdjust({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic availableAdjustmentRequired, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (availableAdjustmentRequired != null) queryParameters['available_adjustment required'] = availableAdjustmentRequired.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/inventory_levels/adjust.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Connects an inventory item to a location by creating an inventory level at that location.
///         When connecting inventory items to locations, it's important to understand the rules around
///         fulfillment service locations.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#connect-2020-10
///
/// `POST /admin/api/2020-10/inventory_levels/connect.json`
Future<ApiResult<void, Never>> createInventoryLevelsConnect({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic relocateIfNecessary, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (relocateIfNecessary != null) queryParameters['relocate_if_necessary'] = relocateIfNecessary.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/inventory_levels/connect.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Sets the inventory level for an inventory item at a location.
///           If the specified location is not connected, it will be automatically connected first.
///           When connecting inventory items to locations, it's important to understand the rules around
///           fulfillment service locations.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#set-2020-10
///
/// `POST /admin/api/2020-10/inventory_levels/set.json`
Future<ApiResult<void, Never>> createInventoryLevelsSet({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic availableRequired, dynamic disconnectIfNecessary, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (availableRequired != null) queryParameters['available required'] = availableRequired.toString();
if (disconnectIfNecessary != null) queryParameters['disconnect_if_necessary'] = disconnectIfNecessary.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/inventory_levels/set.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory levels.
///           You must include inventory_item_ids, location_ids, or both as filter parameters.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#index-2021-01
///
/// `GET /admin/api/2021-01/inventory_levels.json`
Future<ApiResult<void, Never>> deprecated202101GetInventoryLevels({dynamic inventoryItemIds, dynamic locationIds, dynamic limit, dynamic updatedAtMin, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIds != null) queryParameters['inventory_item_ids'] = inventoryItemIds.toString();
if (locationIds != null) queryParameters['location_ids'] = locationIds.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (updatedAtMin != null) queryParameters['updated_at_min'] = updatedAtMin.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/inventory_levels.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes an inventory level of an inventory item at a location.
///           Deleting an inventory level for an inventory item removes that item from the specified location.
///           Every inventory item must have at least one inventory level. To move inventory to another location,
///           first connect the inventory item to another location, and then delete the previous inventory level.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#destroy-2021-01
///
/// `DELETE /admin/api/2021-01/inventory_levels.json`
Future<ApiResult<void, Never>> deprecated202101DeleteInventoryLevels({dynamic inventoryItemIdRequired, dynamic locationIdRequired, int? inventoryItemId, int? locationId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (inventoryItemId != null) queryParameters['inventory_item_id'] = inventoryItemId.toString();
if (locationId != null) queryParameters['location_id'] = locationId.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2021-01/inventory_levels.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Adjusts the inventory level of an inventory item at a single location
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#adjust-2021-01
///
/// `POST /admin/api/2021-01/inventory_levels/adjust.json`
Future<ApiResult<void, Never>> deprecated202101CreateInventoryLevelsAdjust({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic availableAdjustmentRequired, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (availableAdjustmentRequired != null) queryParameters['available_adjustment required'] = availableAdjustmentRequired.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2021-01/inventory_levels/adjust.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Connects an inventory item to a location by creating an inventory level at that location.
///         When connecting inventory items to locations, it's important to understand the rules around
///         fulfillment service locations.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#connect-2021-01
///
/// `POST /admin/api/2021-01/inventory_levels/connect.json`
Future<ApiResult<void, Never>> deprecated202101CreateInventoryLevelsConnect({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic relocateIfNecessary, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (relocateIfNecessary != null) queryParameters['relocate_if_necessary'] = relocateIfNecessary.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2021-01/inventory_levels/connect.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Sets the inventory level for an inventory item at a location.
///           If the specified location is not connected, it will be automatically connected first.
///           When connecting inventory items to locations, it's important to understand the rules around
///           fulfillment service locations.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#set-2021-01
///
/// `POST /admin/api/2021-01/inventory_levels/set.json`
Future<ApiResult<void, Never>> deprecated202101CreateInventoryLevelsSet({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic availableRequired, dynamic disconnectIfNecessary, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (availableRequired != null) queryParameters['available required'] = availableRequired.toString();
if (disconnectIfNecessary != null) queryParameters['disconnect_if_necessary'] = disconnectIfNecessary.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2021-01/inventory_levels/set.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory levels.
///           You must include inventory_item_ids, location_ids, or both as filter parameters.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#index-unstable
///
/// `GET /admin/api/unstable/inventory_levels.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetInventoryLevels({dynamic inventoryItemIds, dynamic locationIds, dynamic limit, dynamic updatedAtMin, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIds != null) queryParameters['inventory_item_ids'] = inventoryItemIds.toString();
if (locationIds != null) queryParameters['location_ids'] = locationIds.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (updatedAtMin != null) queryParameters['updated_at_min'] = updatedAtMin.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/inventory_levels.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes an inventory level of an inventory item at a location.
///           Deleting an inventory level for an inventory item removes that item from the specified location.
///           Every inventory item must have at least one inventory level. To move inventory to another location,
///           first connect the inventory item to another location, and then delete the previous inventory level.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#destroy-unstable
///
/// `DELETE /admin/api/unstable/inventory_levels.json`
Future<ApiResult<void, Never>> deprecatedUnstableDeleteInventoryLevels({dynamic inventoryItemIdRequired, dynamic locationIdRequired, int? inventoryItemId, int? locationId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (inventoryItemId != null) queryParameters['inventory_item_id'] = inventoryItemId.toString();
if (locationId != null) queryParameters['location_id'] = locationId.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/unstable/inventory_levels.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Adjusts the inventory level of an inventory item at a single location
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#adjust-unstable
///
/// `POST /admin/api/unstable/inventory_levels/adjust.json`
Future<ApiResult<void, Never>> deprecatedUnstableCreateInventoryLevelsAdjust({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic availableAdjustmentRequired, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (availableAdjustmentRequired != null) queryParameters['available_adjustment required'] = availableAdjustmentRequired.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/unstable/inventory_levels/adjust.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Connects an inventory item to a location by creating an inventory level at that location.
///         When connecting inventory items to locations, it's important to understand the rules around
///         fulfillment service locations.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#connect-unstable
///
/// `POST /admin/api/unstable/inventory_levels/connect.json`
Future<ApiResult<void, Never>> deprecatedUnstableCreateInventoryLevelsConnect({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic relocateIfNecessary, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (relocateIfNecessary != null) queryParameters['relocate_if_necessary'] = relocateIfNecessary.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/unstable/inventory_levels/connect.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Sets the inventory level for an inventory item at a location.
///           If the specified location is not connected, it will be automatically connected first.
///           When connecting inventory items to locations, it's important to understand the rules around
///           fulfillment service locations.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/inventorylevel#set-unstable
///
/// `POST /admin/api/unstable/inventory_levels/set.json`
Future<ApiResult<void, Never>> deprecatedUnstableCreateInventoryLevelsSet({dynamic inventoryItemIdRequired, dynamic locationIdRequired, dynamic availableRequired, dynamic disconnectIfNecessary, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (inventoryItemIdRequired != null) queryParameters['inventory_item_id required'] = inventoryItemIdRequired.toString();
if (locationIdRequired != null) queryParameters['location_id required'] = locationIdRequired.toString();
if (availableRequired != null) queryParameters['available required'] = availableRequired.toString();
if (disconnectIfNecessary != null) queryParameters['disconnect_if_necessary'] = disconnectIfNecessary.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/unstable/inventory_levels/set.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of locations
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#index-2020-01
///
/// `GET /admin/api/2020-01/locations.json`
Future<ApiResult<void, Never>> deprecated202001GetLocations({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/locations.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single location by its ID
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#show-2020-01
///
/// `GET /admin/api/2020-01/locations/{location_id}.json`
Future<ApiResult<void, Never>> deprecated202001GetLocationsParamLocationId({required String locationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/locations/${Uri.encodeComponent(locationId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a count of locations
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#count-2020-01
///
/// `GET /admin/api/2020-01/locations/count.json`
Future<ApiResult<void, Never>> deprecated202001GetLocationsCount({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/locations/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory levels for a location. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#inventory_levels-2020-01
///
/// `GET /admin/api/2020-01/locations/{location_id}/inventory_levels.json`
Future<ApiResult<void, Never>> deprecated202001GetLocationsParamLocationIdInventoryLevels({required String locationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/locations/${Uri.encodeComponent(locationId)}/inventory_levels.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of locations
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#index-2020-04
///
/// `GET /admin/api/2020-04/locations.json`
Future<ApiResult<void, Never>> deprecated202004GetLocations({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/locations.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single location by its ID
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#show-2020-04
///
/// `GET /admin/api/2020-04/locations/{location_id}.json`
Future<ApiResult<void, Never>> deprecated202004GetLocationsParamLocationId({required String locationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/locations/${Uri.encodeComponent(locationId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a count of locations
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#count-2020-04
///
/// `GET /admin/api/2020-04/locations/count.json`
Future<ApiResult<void, Never>> deprecated202004GetLocationsCount({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/locations/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory levels for a location. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#inventory_levels-2020-04
///
/// `GET /admin/api/2020-04/locations/{location_id}/inventory_levels.json`
Future<ApiResult<void, Never>> deprecated202004GetLocationsParamLocationIdInventoryLevels({required String locationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/locations/${Uri.encodeComponent(locationId)}/inventory_levels.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of locations
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#index-2020-07
///
/// `GET /admin/api/2020-07/locations.json`
Future<ApiResult<void, Never>> deprecated202007GetLocations({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/locations.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single location by its ID
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#show-2020-07
///
/// `GET /admin/api/2020-07/locations/{location_id}.json`
Future<ApiResult<void, Never>> deprecated202007GetLocationsParamLocationId({required String locationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/locations/${Uri.encodeComponent(locationId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a count of locations
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#count-2020-07
///
/// `GET /admin/api/2020-07/locations/count.json`
Future<ApiResult<void, Never>> deprecated202007GetLocationsCount({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/locations/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory levels for a location. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#inventory_levels-2020-07
///
/// `GET /admin/api/2020-07/locations/{location_id}/inventory_levels.json`
Future<ApiResult<void, Never>> deprecated202007GetLocationsParamLocationIdInventoryLevels({required String locationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/locations/${Uri.encodeComponent(locationId)}/inventory_levels.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of locations
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#index-2020-10
///
/// `GET /admin/api/2020-10/locations.json`
Future<ApiResult<void, Never>> getLocations({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/locations.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single location by its ID
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#show-2020-10
///
/// `GET /admin/api/2020-10/locations/{location_id}.json`
Future<ApiResult<void, Never>> getLocationsParamLocationId({required String locationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/locations/${Uri.encodeComponent(locationId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a count of locations
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#count-2020-10
///
/// `GET /admin/api/2020-10/locations/count.json`
Future<ApiResult<void, Never>> getLocationsCount({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/locations/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory levels for a location. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#inventory_levels-2020-10
///
/// `GET /admin/api/2020-10/locations/{location_id}/inventory_levels.json`
Future<ApiResult<void, Never>> getLocationsParamLocationIdInventoryLevels({required String locationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/locations/${Uri.encodeComponent(locationId)}/inventory_levels.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of locations
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#index-2021-01
///
/// `GET /admin/api/2021-01/locations.json`
Future<ApiResult<void, Never>> deprecated202101GetLocations({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/locations.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single location by its ID
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#show-2021-01
///
/// `GET /admin/api/2021-01/locations/{location_id}.json`
Future<ApiResult<void, Never>> deprecated202101GetLocationsParamLocationId({required String locationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/locations/${Uri.encodeComponent(locationId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a count of locations
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#count-2021-01
///
/// `GET /admin/api/2021-01/locations/count.json`
Future<ApiResult<void, Never>> deprecated202101GetLocationsCount({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/locations/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory levels for a location. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#inventory_levels-2021-01
///
/// `GET /admin/api/2021-01/locations/{location_id}/inventory_levels.json`
Future<ApiResult<void, Never>> deprecated202101GetLocationsParamLocationIdInventoryLevels({required String locationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/locations/${Uri.encodeComponent(locationId)}/inventory_levels.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of locations
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#index-unstable
///
/// `GET /admin/api/unstable/locations.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetLocations({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/locations.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single location by its ID
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#show-unstable
///
/// `GET /admin/api/unstable/locations/{location_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetLocationsParamLocationId({required String locationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/locations/${Uri.encodeComponent(locationId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a count of locations
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#count-unstable
///
/// `GET /admin/api/unstable/locations/count.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetLocationsCount({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/locations/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of inventory levels for a location. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/inventory/location#inventory_levels-unstable
///
/// `GET /admin/api/unstable/locations/{location_id}/inventory_levels.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetLocationsParamLocationIdInventoryLevels({required String locationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/locations/${Uri.encodeComponent(locationId)}/inventory_levels.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
