// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';/// StorePropertiesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class StorePropertiesApi with ApiExecutor {const StorePropertiesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieves a list of countries.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#index-2020-01
///
/// `GET /admin/api/2020-01/countries.json`
Future<ApiResult<void, Never>> deprecated202001GetCountries({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) {
  queryParameters['since_id'] = sinceId.toString();
}
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/countries.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Creates a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#create-2020-01
///
/// `POST /admin/api/2020-01/countries.json`
Future<ApiResult<void, Never>> deprecated202001CreateCountries({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/countries.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a count of countries.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#count-2020-01
///
/// `GET /admin/api/2020-01/countries/count.json`
Future<ApiResult<void, Never>> deprecated202001GetCountriesCount({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/countries/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a specific county.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#show-2020-01
///
/// `GET /admin/api/2020-01/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecated202001GetCountriesParamCountryId({required String countryId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/countries/${Uri.encodeComponent(countryId)}.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Updates an existing country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#update-2020-01
///
/// `PUT /admin/api/2020-01/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecated202001UpdateCountriesParamCountryId({required String countryId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-01/countries/${Uri.encodeComponent(countryId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#destroy-2020-01
///
/// `DELETE /admin/api/2020-01/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecated202001DeleteCountriesParamCountryId({required String countryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-01/countries/${Uri.encodeComponent(countryId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of countries.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#index-2020-04
///
/// `GET /admin/api/2020-04/countries.json`
Future<ApiResult<void, Never>> deprecated202004GetCountries({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) {
  queryParameters['since_id'] = sinceId.toString();
}
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/countries.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Creates a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#create-2020-04
///
/// `POST /admin/api/2020-04/countries.json`
Future<ApiResult<void, Never>> deprecated202004CreateCountries({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/countries.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a count of countries.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#count-2020-04
///
/// `GET /admin/api/2020-04/countries/count.json`
Future<ApiResult<void, Never>> deprecated202004GetCountriesCount({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/countries/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a specific county.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#show-2020-04
///
/// `GET /admin/api/2020-04/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecated202004GetCountriesParamCountryId({required String countryId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/countries/${Uri.encodeComponent(countryId)}.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Updates an existing country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#update-2020-04
///
/// `PUT /admin/api/2020-04/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecated202004UpdateCountriesParamCountryId({required String countryId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-04/countries/${Uri.encodeComponent(countryId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#destroy-2020-04
///
/// `DELETE /admin/api/2020-04/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecated202004DeleteCountriesParamCountryId({required String countryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-04/countries/${Uri.encodeComponent(countryId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of countries.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#index-2020-07
///
/// `GET /admin/api/2020-07/countries.json`
Future<ApiResult<void, Never>> deprecated202007GetCountries({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) {
  queryParameters['since_id'] = sinceId.toString();
}
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/countries.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Creates a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#create-2020-07
///
/// `POST /admin/api/2020-07/countries.json`
Future<ApiResult<void, Never>> deprecated202007CreateCountries({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/countries.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a count of countries.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#count-2020-07
///
/// `GET /admin/api/2020-07/countries/count.json`
Future<ApiResult<void, Never>> deprecated202007GetCountriesCount({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/countries/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a specific county.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#show-2020-07
///
/// `GET /admin/api/2020-07/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecated202007GetCountriesParamCountryId({required String countryId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/countries/${Uri.encodeComponent(countryId)}.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Updates an existing country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#update-2020-07
///
/// `PUT /admin/api/2020-07/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecated202007UpdateCountriesParamCountryId({required String countryId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-07/countries/${Uri.encodeComponent(countryId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#destroy-2020-07
///
/// `DELETE /admin/api/2020-07/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecated202007DeleteCountriesParamCountryId({required String countryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-07/countries/${Uri.encodeComponent(countryId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of countries.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#index-2020-10
///
/// `GET /admin/api/2020-10/countries.json`
Future<ApiResult<void, Never>> getCountries({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) {
  queryParameters['since_id'] = sinceId.toString();
}
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/countries.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Creates a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#create-2020-10
///
/// `POST /admin/api/2020-10/countries.json`
Future<ApiResult<void, Never>> createCountries({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/countries.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a count of countries.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#count-2020-10
///
/// `GET /admin/api/2020-10/countries/count.json`
Future<ApiResult<void, Never>> getCountriesCount({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/countries/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a specific county.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#show-2020-10
///
/// `GET /admin/api/2020-10/countries/{country_id}.json`
Future<ApiResult<void, Never>> getCountriesParamCountryId({required String countryId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/countries/${Uri.encodeComponent(countryId)}.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Updates an existing country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#update-2020-10
///
/// `PUT /admin/api/2020-10/countries/{country_id}.json`
Future<ApiResult<void, Never>> updateCountriesParamCountryId({required String countryId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-10/countries/${Uri.encodeComponent(countryId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#destroy-2020-10
///
/// `DELETE /admin/api/2020-10/countries/{country_id}.json`
Future<ApiResult<void, Never>> deleteCountriesParamCountryId({required String countryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-10/countries/${Uri.encodeComponent(countryId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of countries.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#index-2021-01
///
/// `GET /admin/api/2021-01/countries.json`
Future<ApiResult<void, Never>> deprecated202101GetCountries({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) {
  queryParameters['since_id'] = sinceId.toString();
}
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/countries.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Creates a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#create-2021-01
///
/// `POST /admin/api/2021-01/countries.json`
Future<ApiResult<void, Never>> deprecated202101CreateCountries({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2021-01/countries.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a count of countries.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#count-2021-01
///
/// `GET /admin/api/2021-01/countries/count.json`
Future<ApiResult<void, Never>> deprecated202101GetCountriesCount({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/countries/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a specific county.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#show-2021-01
///
/// `GET /admin/api/2021-01/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecated202101GetCountriesParamCountryId({required String countryId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/countries/${Uri.encodeComponent(countryId)}.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Updates an existing country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#update-2021-01
///
/// `PUT /admin/api/2021-01/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecated202101UpdateCountriesParamCountryId({required String countryId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2021-01/countries/${Uri.encodeComponent(countryId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#destroy-2021-01
///
/// `DELETE /admin/api/2021-01/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecated202101DeleteCountriesParamCountryId({required String countryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2021-01/countries/${Uri.encodeComponent(countryId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of countries.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#index-unstable
///
/// `GET /admin/api/unstable/countries.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetCountries({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) {
  queryParameters['since_id'] = sinceId.toString();
}
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/countries.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Creates a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#create-unstable
///
/// `POST /admin/api/unstable/countries.json`
Future<ApiResult<void, Never>> deprecatedUnstableCreateCountries({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/unstable/countries.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a count of countries.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#count-unstable
///
/// `GET /admin/api/unstable/countries/count.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetCountriesCount({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/countries/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a specific county.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#show-unstable
///
/// `GET /admin/api/unstable/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetCountriesParamCountryId({required String countryId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/countries/${Uri.encodeComponent(countryId)}.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Updates an existing country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#update-unstable
///
/// `PUT /admin/api/unstable/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableUpdateCountriesParamCountryId({required String countryId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/unstable/countries/${Uri.encodeComponent(countryId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/country#destroy-unstable
///
/// `DELETE /admin/api/unstable/countries/{country_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableDeleteCountriesParamCountryId({required String countryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/unstable/countries/${Uri.encodeComponent(countryId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of currencies enabled on a shop
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/currency#index-2020-01
///
/// `GET /admin/api/2020-01/currencies.json`
Future<ApiResult<void, Never>> deprecated202001GetCurrencies({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/currencies.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of currencies enabled on a shop
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/currency#index-2020-04
///
/// `GET /admin/api/2020-04/currencies.json`
Future<ApiResult<void, Never>> deprecated202004GetCurrencies({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/currencies.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of currencies enabled on a shop
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/currency#index-2020-07
///
/// `GET /admin/api/2020-07/currencies.json`
Future<ApiResult<void, Never>> deprecated202007GetCurrencies({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/currencies.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of currencies enabled on a shop
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/currency#index-2020-10
///
/// `GET /admin/api/2020-10/currencies.json`
Future<ApiResult<void, Never>> getCurrencies({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/currencies.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of currencies enabled on a shop
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/currency#index-2021-01
///
/// `GET /admin/api/2021-01/currencies.json`
Future<ApiResult<void, Never>> deprecated202101GetCurrencies({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/currencies.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of currencies enabled on a shop
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/currency#index-unstable
///
/// `GET /admin/api/unstable/currencies.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetCurrencies({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/currencies.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of the shop's policies
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/policy#index-2020-01
///
/// `GET /admin/api/2020-01/policies.json`
Future<ApiResult<void, Never>> deprecated202001GetPolicies({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/policies.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of the shop's policies
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/policy#index-2020-04
///
/// `GET /admin/api/2020-04/policies.json`
Future<ApiResult<void, Never>> deprecated202004GetPolicies({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/policies.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of the shop's policies
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/policy#index-2020-07
///
/// `GET /admin/api/2020-07/policies.json`
Future<ApiResult<void, Never>> deprecated202007GetPolicies({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/policies.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of the shop's policies
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/policy#index-2020-10
///
/// `GET /admin/api/2020-10/policies.json`
Future<ApiResult<void, Never>> getPolicies({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/policies.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of the shop's policies
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/policy#index-2021-01
///
/// `GET /admin/api/2021-01/policies.json`
Future<ApiResult<void, Never>> deprecated202101GetPolicies({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/policies.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of the shop's policies
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/policy#index-unstable
///
/// `GET /admin/api/unstable/policies.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetPolicies({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/policies.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of provinces
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#index-2020-01
///
/// `GET /admin/api/2020-01/countries/{country_id}/provinces.json`
Future<ApiResult<void, Never>> deprecated202001GetCountriesParamCountryIdProvinces({required String countryId, dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) {
  queryParameters['since_id'] = sinceId.toString();
}
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/countries/${Uri.encodeComponent(countryId)}/provinces.json',
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
/// Retrieves a count of provinces for a country
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#count-2020-01
///
/// `GET /admin/api/2020-01/countries/{country_id}/provinces/count.json`
Future<ApiResult<void, Never>> deprecated202001GetCountriesParamCountryIdProvincesCount({required String countryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/countries/${Uri.encodeComponent(countryId)}/provinces/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single province for a country
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#show-2020-01
///
/// `GET /admin/api/2020-01/countries/{country_id}/provinces/{province_id}.json`
Future<ApiResult<void, Never>> deprecated202001GetCountriesParamCountryIdProvincesParamProvinceId({required String countryId, required String provinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/countries/${Uri.encodeComponent(countryId)}/provinces/${Uri.encodeComponent(provinceId)}.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Updates an existing province for a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#update-2020-01
///
/// `PUT /admin/api/2020-01/countries/{country_id}/provinces/{province_id}.json`
Future<ApiResult<void, Never>> deprecated202001UpdateCountriesParamCountryIdProvincesParamProvinceId({required String countryId, required String provinceId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-01/countries/${Uri.encodeComponent(countryId)}/provinces/${Uri.encodeComponent(provinceId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of provinces
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#index-2020-04
///
/// `GET /admin/api/2020-04/countries/{country_id}/provinces.json`
Future<ApiResult<void, Never>> deprecated202004GetCountriesParamCountryIdProvinces({required String countryId, dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) {
  queryParameters['since_id'] = sinceId.toString();
}
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/countries/${Uri.encodeComponent(countryId)}/provinces.json',
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
/// Retrieves a count of provinces for a country
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#count-2020-04
///
/// `GET /admin/api/2020-04/countries/{country_id}/provinces/count.json`
Future<ApiResult<void, Never>> deprecated202004GetCountriesParamCountryIdProvincesCount({required String countryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/countries/${Uri.encodeComponent(countryId)}/provinces/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single province for a country
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#show-2020-04
///
/// `GET /admin/api/2020-04/countries/{country_id}/provinces/{province_id}.json`
Future<ApiResult<void, Never>> deprecated202004GetCountriesParamCountryIdProvincesParamProvinceId({required String countryId, required String provinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/countries/${Uri.encodeComponent(countryId)}/provinces/${Uri.encodeComponent(provinceId)}.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Updates an existing province for a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#update-2020-04
///
/// `PUT /admin/api/2020-04/countries/{country_id}/provinces/{province_id}.json`
Future<ApiResult<void, Never>> deprecated202004UpdateCountriesParamCountryIdProvincesParamProvinceId({required String countryId, required String provinceId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-04/countries/${Uri.encodeComponent(countryId)}/provinces/${Uri.encodeComponent(provinceId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of provinces
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#index-2020-07
///
/// `GET /admin/api/2020-07/countries/{country_id}/provinces.json`
Future<ApiResult<void, Never>> deprecated202007GetCountriesParamCountryIdProvinces({required String countryId, dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) {
  queryParameters['since_id'] = sinceId.toString();
}
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/countries/${Uri.encodeComponent(countryId)}/provinces.json',
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
/// Retrieves a count of provinces for a country
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#count-2020-07
///
/// `GET /admin/api/2020-07/countries/{country_id}/provinces/count.json`
Future<ApiResult<void, Never>> deprecated202007GetCountriesParamCountryIdProvincesCount({required String countryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/countries/${Uri.encodeComponent(countryId)}/provinces/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single province for a country
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#show-2020-07
///
/// `GET /admin/api/2020-07/countries/{country_id}/provinces/{province_id}.json`
Future<ApiResult<void, Never>> deprecated202007GetCountriesParamCountryIdProvincesParamProvinceId({required String countryId, required String provinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/countries/${Uri.encodeComponent(countryId)}/provinces/${Uri.encodeComponent(provinceId)}.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Updates an existing province for a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#update-2020-07
///
/// `PUT /admin/api/2020-07/countries/{country_id}/provinces/{province_id}.json`
Future<ApiResult<void, Never>> deprecated202007UpdateCountriesParamCountryIdProvincesParamProvinceId({required String countryId, required String provinceId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-07/countries/${Uri.encodeComponent(countryId)}/provinces/${Uri.encodeComponent(provinceId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of provinces
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#index-2020-10
///
/// `GET /admin/api/2020-10/countries/{country_id}/provinces.json`
Future<ApiResult<void, Never>> getCountriesParamCountryIdProvinces({required String countryId, dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) {
  queryParameters['since_id'] = sinceId.toString();
}
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/countries/${Uri.encodeComponent(countryId)}/provinces.json',
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
/// Retrieves a count of provinces for a country
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#count-2020-10
///
/// `GET /admin/api/2020-10/countries/{country_id}/provinces/count.json`
Future<ApiResult<void, Never>> getCountriesParamCountryIdProvincesCount({required String countryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/countries/${Uri.encodeComponent(countryId)}/provinces/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single province for a country
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#show-2020-10
///
/// `GET /admin/api/2020-10/countries/{country_id}/provinces/{province_id}.json`
Future<ApiResult<void, Never>> getCountriesParamCountryIdProvincesParamProvinceId({required String countryId, required String provinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/countries/${Uri.encodeComponent(countryId)}/provinces/${Uri.encodeComponent(provinceId)}.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Updates an existing province for a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#update-2020-10
///
/// `PUT /admin/api/2020-10/countries/{country_id}/provinces/{province_id}.json`
Future<ApiResult<void, Never>> updateCountriesParamCountryIdProvincesParamProvinceId({required String countryId, required String provinceId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-10/countries/${Uri.encodeComponent(countryId)}/provinces/${Uri.encodeComponent(provinceId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of provinces
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#index-2021-01
///
/// `GET /admin/api/2021-01/countries/{country_id}/provinces.json`
Future<ApiResult<void, Never>> deprecated202101GetCountriesParamCountryIdProvinces({required String countryId, dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) {
  queryParameters['since_id'] = sinceId.toString();
}
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/countries/${Uri.encodeComponent(countryId)}/provinces.json',
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
/// Retrieves a count of provinces for a country
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#count-2021-01
///
/// `GET /admin/api/2021-01/countries/{country_id}/provinces/count.json`
Future<ApiResult<void, Never>> deprecated202101GetCountriesParamCountryIdProvincesCount({required String countryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/countries/${Uri.encodeComponent(countryId)}/provinces/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single province for a country
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#show-2021-01
///
/// `GET /admin/api/2021-01/countries/{country_id}/provinces/{province_id}.json`
Future<ApiResult<void, Never>> deprecated202101GetCountriesParamCountryIdProvincesParamProvinceId({required String countryId, required String provinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/countries/${Uri.encodeComponent(countryId)}/provinces/${Uri.encodeComponent(provinceId)}.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Updates an existing province for a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#update-2021-01
///
/// `PUT /admin/api/2021-01/countries/{country_id}/provinces/{province_id}.json`
Future<ApiResult<void, Never>> deprecated202101UpdateCountriesParamCountryIdProvincesParamProvinceId({required String countryId, required String provinceId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2021-01/countries/${Uri.encodeComponent(countryId)}/provinces/${Uri.encodeComponent(provinceId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of provinces
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#index-unstable
///
/// `GET /admin/api/unstable/countries/{country_id}/provinces.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetCountriesParamCountryIdProvinces({required String countryId, dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) {
  queryParameters['since_id'] = sinceId.toString();
}
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/countries/${Uri.encodeComponent(countryId)}/provinces.json',
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
/// Retrieves a count of provinces for a country
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#count-unstable
///
/// `GET /admin/api/unstable/countries/{country_id}/provinces/count.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetCountriesParamCountryIdProvincesCount({required String countryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/countries/${Uri.encodeComponent(countryId)}/provinces/count.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single province for a country
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#show-unstable
///
/// `GET /admin/api/unstable/countries/{country_id}/provinces/{province_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetCountriesParamCountryIdProvincesParamProvinceId({required String countryId, required String provinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/countries/${Uri.encodeComponent(countryId)}/provinces/${Uri.encodeComponent(provinceId)}.json',
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
/// Caution
///   As of version 2020-10, the tax field is deprecated.
/// 
/// Updates an existing province for a country.
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/province#update-unstable
///
/// `PUT /admin/api/unstable/countries/{country_id}/provinces/{province_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableUpdateCountriesParamCountryIdProvincesParamProvinceId({required String countryId, required String provinceId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/unstable/countries/${Uri.encodeComponent(countryId)}/provinces/${Uri.encodeComponent(provinceId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Get a list of all shipping zones
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/shippingzone#index-2020-01
///
/// `GET /admin/api/2020-01/shipping_zones.json`
Future<ApiResult<void, Never>> deprecated202001GetShippingZones({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/shipping_zones.json',
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
/// Get a list of all shipping zones
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/shippingzone#index-2020-04
///
/// `GET /admin/api/2020-04/shipping_zones.json`
Future<ApiResult<void, Never>> deprecated202004GetShippingZones({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/shipping_zones.json',
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
/// Get a list of all shipping zones
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/shippingzone#index-2020-07
///
/// `GET /admin/api/2020-07/shipping_zones.json`
Future<ApiResult<void, Never>> deprecated202007GetShippingZones({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/shipping_zones.json',
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
/// Get a list of all shipping zones
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/shippingzone#index-2020-10
///
/// `GET /admin/api/2020-10/shipping_zones.json`
Future<ApiResult<void, Never>> getShippingZones({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/shipping_zones.json',
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
/// Get a list of all shipping zones
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/shippingzone#index-2021-01
///
/// `GET /admin/api/2021-01/shipping_zones.json`
Future<ApiResult<void, Never>> deprecated202101GetShippingZones({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/shipping_zones.json',
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
/// Get a list of all shipping zones
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/shippingzone#index-unstable
///
/// `GET /admin/api/unstable/shipping_zones.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetShippingZones({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/shipping_zones.json',
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
/// Retrieves the shop's configuration
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/shop#show-2020-01
///
/// `GET /admin/api/2020-01/shop.json`
Future<ApiResult<void, Never>> deprecated202001GetShop({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/shop.json',
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
/// Retrieves the shop's configuration
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/shop#show-2020-04
///
/// `GET /admin/api/2020-04/shop.json`
Future<ApiResult<void, Never>> deprecated202004GetShop({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/shop.json',
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
/// Retrieves the shop's configuration
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/shop#show-2020-07
///
/// `GET /admin/api/2020-07/shop.json`
Future<ApiResult<void, Never>> deprecated202007GetShop({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/shop.json',
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
/// Retrieves the shop's configuration
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/shop#show-2020-10
///
/// `GET /admin/api/2020-10/shop.json`
Future<ApiResult<void, Never>> getShop({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/shop.json',
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
/// Retrieves the shop's configuration
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/shop#show-2021-01
///
/// `GET /admin/api/2021-01/shop.json`
Future<ApiResult<void, Never>> deprecated202101GetShop({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/shop.json',
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
/// Retrieves the shop's configuration
///
/// https://shopify.dev/docs/admin-api/rest/reference/store-properties/shop#show-unstable
///
/// `GET /admin/api/unstable/shop.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetShop({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
  queryParameters['fields'] = fields.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/shop.json',
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
 }
