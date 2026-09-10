// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/basic_error.dart';import '../models/org_private_registry_configuration.dart';import '../models/org_private_registry_configuration_with_selected_repositories.dart';import '../models/private_registries_create_org_private_registry_error.dart';import '../models/private_registries_create_org_private_registry_request.dart';import '../models/private_registries_delete_org_private_registry_error.dart';import '../models/private_registries_get_org_public_key_response.dart';import '../models/private_registries_list_org_private_registries_error.dart';import '../models/private_registries_list_org_private_registries_response.dart';import '../models/private_registries_update_org_private_registry_error.dart';import '../models/private_registries_update_org_private_registry_request.dart';/// PrivateRegistriesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PrivateRegistriesApi with ApiExecutor {const PrivateRegistriesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List private registries for an organization
///
/// 
/// Lists all private registry configurations available at the organization-level without revealing their encrypted
/// values.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `admin:org` scope to use this endpoint.
///
/// `GET /orgs/{org}/private-registries`
Future<ApiResult<PrivateRegistriesListOrgPrivateRegistriesResponse, PrivateRegistriesListOrgPrivateRegistriesError>> privateRegistriesListOrgPrivateRegistries({required String org, int? perPage, int? page, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/private-registries',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PrivateRegistriesListOrgPrivateRegistriesResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: PrivateRegistriesListOrgPrivateRegistriesError.parse,
);
}
/// Create a private registry for an organization
///
/// 
/// Creates a private registry configuration with an encrypted value for an organization. Encrypt your secret using [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages). For more information, see "[Encrypting secrets for the REST API](https://docs.github.com/rest/guides/encrypting-secrets-for-the-rest-api)."
/// 
/// OAuth app tokens and personal access tokens (classic) need the `admin:org` scope to use this endpoint.
///
/// `POST /orgs/{org}/private-registries`
Future<ApiResult<OrgPrivateRegistryConfigurationWithSelectedRepositories, PrivateRegistriesCreateOrgPrivateRegistryError>> privateRegistriesCreateOrgPrivateRegistry({required String org, required PrivateRegistriesCreateOrgPrivateRegistryRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/orgs/${Uri.encodeComponent(org)}/private-registries',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return OrgPrivateRegistryConfigurationWithSelectedRepositories.fromJson(json as Map<String, dynamic>);
  },
  onError: PrivateRegistriesCreateOrgPrivateRegistryError.parse,
);
}
/// Get private registries public key for an organization
///
/// 
/// Gets the org public key, which is needed to encrypt private registry secrets. You need to encrypt a secret before you can create or update secrets.
/// 
/// OAuth tokens and personal access tokens (classic) need the `admin:org` scope to use this endpoint.
///
/// `GET /orgs/{org}/private-registries/public-key`
Future<ApiResult<PrivateRegistriesGetOrgPublicKeyResponse, BasicError>> privateRegistriesGetOrgPublicKey({required String org, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/private-registries/public-key',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PrivateRegistriesGetOrgPublicKeyResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return BasicError.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Get a private registry for an organization
///
/// 
/// Get the configuration of a single private registry defined for an organization, omitting its encrypted value.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `admin:org` scope to use this endpoint.
///
/// `GET /orgs/{org}/private-registries/{secret_name}`
Future<ApiResult<OrgPrivateRegistryConfiguration, BasicError>> privateRegistriesGetOrgPrivateRegistry({required String org, required String secretName, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/private-registries/${Uri.encodeComponent(secretName)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return OrgPrivateRegistryConfiguration.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return BasicError.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Update a private registry for an organization
///
/// 
/// Updates a private registry configuration with an encrypted value for an organization. Encrypt your secret using [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages). For more information, see "[Encrypting secrets for the REST API](https://docs.github.com/rest/guides/encrypting-secrets-for-the-rest-api)."
/// 
/// OAuth app tokens and personal access tokens (classic) need the `admin:org` scope to use this endpoint.
///
/// `PATCH /orgs/{org}/private-registries/{secret_name}`
Future<ApiResult<void, PrivateRegistriesUpdateOrgPrivateRegistryError>> privateRegistriesUpdateOrgPrivateRegistry({required String org, required String secretName, required PrivateRegistriesUpdateOrgPrivateRegistryRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/orgs/${Uri.encodeComponent(org)}/private-registries/${Uri.encodeComponent(secretName)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (_) {},
  onError: PrivateRegistriesUpdateOrgPrivateRegistryError.parse,
);
}
/// Delete a private registry for an organization
///
/// 
/// Delete a private registry configuration at the organization-level.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `admin:org` scope to use this endpoint.
///
/// `DELETE /orgs/{org}/private-registries/{secret_name}`
Future<ApiResult<void, PrivateRegistriesDeleteOrgPrivateRegistryError>> privateRegistriesDeleteOrgPrivateRegistry({required String org, required String secretName, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/orgs/${Uri.encodeComponent(org)}/private-registries/${Uri.encodeComponent(secretName)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (_) {},
  onError: PrivateRegistriesDeleteOrgPrivateRegistryError.parse,
);
}
}
