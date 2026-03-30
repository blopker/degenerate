// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/apps_check_token_request.dart';import '../models/apps_create_from_manifest_response.dart';import '../models/apps_create_installation_access_token_request.dart';import '../models/apps_delete_authorization_request.dart';import '../models/apps_delete_token_request.dart';import '../models/apps_list_accounts_for_plan_direction.dart';import '../models/apps_list_accounts_for_plan_sort.dart';import '../models/apps_list_accounts_for_plan_stubbed_direction.dart';import '../models/apps_list_accounts_for_plan_stubbed_sort.dart';import '../models/apps_list_installation_repos_for_authenticated_user_response.dart';import '../models/apps_list_installations_for_authenticated_user_response.dart';import '../models/apps_list_repos_accessible_to_installation_response.dart';import '../models/apps_reset_token_request.dart';import '../models/apps_scope_token_request.dart';import '../models/apps_update_webhook_config_for_app_request.dart';import '../models/authorization.dart';import '../models/basic_error.dart';import '../models/hook_delivery.dart';import '../models/hook_delivery_item.dart';import '../models/installation.dart';import '../models/installation_token.dart';import '../models/integration.dart';import '../models/integration_installation_request.dart';import '../models/marketplace_listing_plan.dart';import '../models/marketplace_purchase.dart';import '../models/user_marketplace_purchase.dart';import '../models/validation_error.dart';import '../models/webhook_config.dart';/// AppsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AppsApi with ApiExecutor {const AppsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get the authenticated app
///
/// Returns the GitHub App associated with the authentication credentials used. To see how many app installations are associated with this GitHub App, see the `installations_count` in the response. For more details about your app's installations, see the "[List installations for the authenticated app](https://docs.github.com/rest/apps/apps#list-installations-for-the-authenticated-app)" endpoint.
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `GET /app`
Future<ApiResult<Integration, Never>> appsGetAuthenticated({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/app',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Integration.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a GitHub App from a manifest
///
/// Use this endpoint to complete the handshake necessary when implementing the [GitHub App Manifest flow](https://docs.github.com/apps/building-github-apps/creating-github-apps-from-a-manifest/). When you create a GitHub App with the manifest flow, you receive a temporary `code` used to retrieve the GitHub App's `id`, `pem` (private key), and `webhook_secret`.
///
/// `POST /app-manifests/{code}/conversions`
Future<ApiResult<AppsCreateFromManifestResponse, BasicError>> appsCreateFromManifest({required String code, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/app-manifests/${Uri.encodeComponent(code)}/conversions',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AppsCreateFromManifestResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a webhook configuration for an app
///
/// Returns the webhook configuration for a GitHub App. For more information about configuring a webhook for your app, see "[Creating a GitHub App](/developers/apps/creating-a-github-app)."
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `GET /app/hook/config`
Future<ApiResult<WebhookConfig, Never>> appsGetWebhookConfigForApp({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/app/hook/config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WebhookConfig.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a webhook configuration for an app
///
/// Updates the webhook configuration for a GitHub App. For more information about configuring a webhook for your app, see "[Creating a GitHub App](/developers/apps/creating-a-github-app)."
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `PATCH /app/hook/config`
Future<ApiResult<WebhookConfig, Never>> appsUpdateWebhookConfigForApp({required AppsUpdateWebhookConfigForAppRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/app/hook/config',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WebhookConfig.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List deliveries for an app webhook
///
/// Returns a list of webhook deliveries for the webhook configured for a GitHub App.
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `GET /app/hook/deliveries`
Future<ApiResult<List<HookDeliveryItem>, BasicError>> appsListWebhookDeliveries({int? perPage, String? cursor, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/app/hook/deliveries',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => HookDeliveryItem.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a delivery for an app webhook
///
/// Returns a delivery for the webhook configured for a GitHub App.
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `GET /app/hook/deliveries/{delivery_id}`
Future<ApiResult<HookDelivery, BasicError>> appsGetWebhookDelivery({required int deliveryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/app/hook/deliveries/${Uri.encodeComponent(deliveryId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return HookDelivery.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Redeliver a delivery for an app webhook
///
/// Redeliver a delivery for the webhook configured for a GitHub App.
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `POST /app/hook/deliveries/{delivery_id}/attempts`
Future<ApiResult<Map<String, dynamic>, BasicError>> appsRedeliverWebhookDelivery({required int deliveryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/app/hook/deliveries/${Uri.encodeComponent(deliveryId.toString())}/attempts',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return (jsonDecode(response.body) as Map<String, dynamic>).map((k, v) => MapEntry(k, v));
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List installation requests for the authenticated app
///
/// Lists all the pending installation requests for the authenticated GitHub App.
///
/// `GET /app/installation-requests`
Future<ApiResult<List<IntegrationInstallationRequest>, BasicError>> appsListInstallationRequestsForAuthenticatedApp({int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/app/installation-requests',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => IntegrationInstallationRequest.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List installations for the authenticated app
///
/// The permissions the installation has are included under the `permissions` key.
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `GET /app/installations`
Future<ApiResult<List<Installation>, Never>> appsListInstallations({int? perPage, int? page, DateTime? since, String? outdated, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (since != null) {
  queryParameters['since'] = since.toString();
}
if (outdated != null) {
  queryParameters['outdated'] = outdated;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/app/installations',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => Installation.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get an installation for the authenticated app
///
/// Enables an authenticated GitHub App to find an installation's information using the installation id.
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `GET /app/installations/{installation_id}`
Future<ApiResult<Installation, BasicError>> appsGetInstallation({required int installationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/app/installations/${Uri.encodeComponent(installationId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Installation.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an installation for the authenticated app
///
/// Uninstalls a GitHub App on a user, organization, or enterprise account. If you prefer to temporarily suspend an app's access to your account's resources, then we recommend the "[Suspend an app installation](https://docs.github.com/rest/apps/apps#suspend-an-app-installation)" endpoint.
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `DELETE /app/installations/{installation_id}`
Future<ApiResult<void, BasicError>> appsDeleteInstallation({required int installationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/app/installations/${Uri.encodeComponent(installationId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create an installation access token for an app
///
/// Creates an installation access token that enables a GitHub App to make authenticated API requests for the app's installation on an organization or individual account. Installation tokens expire one hour from the time you create them. Using an expired token produces a status code of `401 - Unauthorized`, and requires creating a new installation token. By default the installation token has access to all repositories that the installation can access.
/// 
/// Optionally, you can use the `repositories` or `repository_ids` body parameters to specify individual repositories that the installation access token can access. If you don't use `repositories` or `repository_ids` to grant access to specific repositories, the installation access token will have access to all repositories that the installation was granted access to. The installation access token cannot be granted access to repositories that the installation was not granted access to. Up to 500 repositories can be listed in this manner.
/// 
/// Optionally, use the `permissions` body parameter to specify the permissions that the installation access token should have. If `permissions` is not specified, the installation access token will have all of the permissions that were granted to the app. The installation access token cannot be granted permissions that the app was not granted.
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `POST /app/installations/{installation_id}/access_tokens`
Future<ApiResult<InstallationToken, BasicError>> appsCreateInstallationAccessToken({required int installationId, AppsCreateInstallationAccessTokenRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/app/installations/${Uri.encodeComponent(installationId.toString())}/access_tokens',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return InstallationToken.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Suspend an app installation
///
/// Suspends a GitHub App on a user, organization, or enterprise account, which blocks the app from accessing the account's resources. When a GitHub App is suspended, the app's access to the GitHub API or webhook events is blocked for that account.
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `PUT /app/installations/{installation_id}/suspended`
Future<ApiResult<void, BasicError>> appsSuspendInstallation({required int installationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/app/installations/${Uri.encodeComponent(installationId.toString())}/suspended',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Unsuspend an app installation
///
/// Removes a GitHub App installation suspension.
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `DELETE /app/installations/{installation_id}/suspended`
Future<ApiResult<void, BasicError>> appsUnsuspendInstallation({required int installationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/app/installations/${Uri.encodeComponent(installationId.toString())}/suspended',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an app authorization
///
/// OAuth and GitHub application owners can revoke a grant for their application and a specific user. You must provide a valid OAuth `access_token` as an input parameter and the grant for the token's owner will be deleted.
/// Deleting an application's grant will also delete all OAuth tokens associated with the application for the user. Once deleted, the application will have no access to the user's account and will no longer be listed on [the application authorizations settings screen within GitHub](https://github.com/settings/applications#authorized).
///
/// `DELETE /applications/{client_id}/grant`
Future<ApiResult<void, ValidationError>> appsDeleteAuthorization({required String clientId, required AppsDeleteAuthorizationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/applications/${Uri.encodeComponent(clientId)}/grant',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Check a token
///
/// OAuth applications and GitHub applications with OAuth authorizations can use this API method for checking OAuth token validity without exceeding the normal rate limits for failed login attempts. Authentication works differently with this particular endpoint. Invalid tokens will return `404 NOT FOUND`.
///
/// `POST /applications/{client_id}/token`
Future<ApiResult<Authorization, ValidationError>> appsCheckToken({required String clientId, required AppsCheckTokenRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/applications/${Uri.encodeComponent(clientId)}/token',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Authorization.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Reset a token
///
/// OAuth applications and GitHub applications with OAuth authorizations can use this API method to reset a valid OAuth token without end-user involvement. Applications must save the "token" property in the response because changes take effect immediately. Invalid tokens will return `404 NOT FOUND`.
///
/// `PATCH /applications/{client_id}/token`
Future<ApiResult<Authorization, ValidationError>> appsResetToken({required String clientId, required AppsResetTokenRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/applications/${Uri.encodeComponent(clientId)}/token',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Authorization.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an app token
///
/// OAuth  or GitHub application owners can revoke a single token for an OAuth application or a GitHub application with an OAuth authorization.
///
/// `DELETE /applications/{client_id}/token`
Future<ApiResult<void, ValidationError>> appsDeleteToken({required String clientId, required AppsDeleteTokenRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/applications/${Uri.encodeComponent(clientId)}/token',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a scoped access token
///
/// Use a non-scoped user access token to create a repository-scoped and/or permission-scoped user access token. You can specify
/// which repositories the token can access and which permissions are granted to the
/// token.
/// 
/// Invalid tokens will return `404 NOT FOUND`.
///
/// `POST /applications/{client_id}/token/scoped`
Future<ApiResult<Authorization, BasicError>> appsScopeToken({required String clientId, required AppsScopeTokenRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/applications/${Uri.encodeComponent(clientId)}/token/scoped',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Authorization.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an app
///
/// > [!NOTE]
/// > The `:app_slug` is just the URL-friendly name of your GitHub App. You can find this on the settings page for your GitHub App (e.g., `https://github.com/settings/apps/:app_slug`).
///
/// `GET /apps/{app_slug}`
Future<ApiResult<Integration, BasicError>> appsGetBySlug({required String appSlug, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/apps/${Uri.encodeComponent(appSlug)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Integration.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List repositories accessible to the app installation
///
/// List repositories that an app installation can access.
///
/// `GET /installation/repositories`
Future<ApiResult<AppsListReposAccessibleToInstallationResponse, BasicError>> appsListReposAccessibleToInstallation({int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/installation/repositories',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AppsListReposAccessibleToInstallationResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Revoke an installation access token
///
/// Revokes the installation token you're using to authenticate as an installation and access this endpoint.
/// 
/// Once an installation token is revoked, the token is invalidated and cannot be used. Other endpoints that require the revoked installation token must have a new installation token to work. You can create a new token using the "[Create an installation access token for an app](https://docs.github.com/rest/apps/apps#create-an-installation-access-token-for-an-app)" endpoint.
///
/// `DELETE /installation/token`
Future<ApiResult<void, Never>> appsRevokeInstallationAccessToken({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/installation/token',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Get a subscription plan for an account
///
/// Shows whether the user or organization account actively subscribes to a plan listed by the authenticated GitHub App. When someone submits a plan change that won't be processed until the end of their billing cycle, you will also see the upcoming pending change.
/// 
/// GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth apps must use [basic authentication](https://docs.github.com/rest/authentication/authenticating-to-the-rest-api#using-basic-authentication) with their client ID and client secret to access this endpoint.
///
/// `GET /marketplace_listing/accounts/{account_id}`
Future<ApiResult<MarketplacePurchase, BasicError>> appsGetSubscriptionPlanForAccount({required int accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/marketplace_listing/accounts/${Uri.encodeComponent(accountId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MarketplacePurchase.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List plans
///
/// Lists all plans that are part of your GitHub Marketplace listing.
/// 
/// GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth apps must use [basic authentication](https://docs.github.com/rest/authentication/authenticating-to-the-rest-api#using-basic-authentication) with their client ID and client secret to access this endpoint.
///
/// `GET /marketplace_listing/plans`
Future<ApiResult<List<MarketplaceListingPlan>, BasicError>> appsListPlans({int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/marketplace_listing/plans',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => MarketplaceListingPlan.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List accounts for a plan
///
/// Returns user and organization accounts associated with the specified plan, including free plans. For per-seat pricing, you see the list of accounts that have purchased the plan, including the number of seats purchased. When someone submits a plan change that won't be processed until the end of their billing cycle, you will also see the upcoming pending change.
/// 
/// GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth apps must use [basic authentication](https://docs.github.com/rest/authentication/authenticating-to-the-rest-api#using-basic-authentication) with their client ID and client secret to access this endpoint.
///
/// `GET /marketplace_listing/plans/{plan_id}/accounts`
Future<ApiResult<List<MarketplacePurchase>, BasicError>> appsListAccountsForPlan({required int planId, AppsListAccountsForPlanSort? sort, AppsListAccountsForPlanDirection? direction, int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sort != null) {
  queryParameters['sort'] = sort.toJson();
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/marketplace_listing/plans/${Uri.encodeComponent(planId.toString())}/accounts',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => MarketplacePurchase.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a subscription plan for an account (stubbed)
///
/// Shows whether the user or organization account actively subscribes to a plan listed by the authenticated GitHub App. When someone submits a plan change that won't be processed until the end of their billing cycle, you will also see the upcoming pending change.
/// 
/// GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth apps must use [basic authentication](https://docs.github.com/rest/authentication/authenticating-to-the-rest-api#using-basic-authentication) with their client ID and client secret to access this endpoint.
///
/// `GET /marketplace_listing/stubbed/accounts/{account_id}`
Future<ApiResult<MarketplacePurchase, BasicError>> appsGetSubscriptionPlanForAccountStubbed({required int accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/marketplace_listing/stubbed/accounts/${Uri.encodeComponent(accountId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MarketplacePurchase.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List plans (stubbed)
///
/// Lists all plans that are part of your GitHub Marketplace listing.
/// 
/// GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth apps must use [basic authentication](https://docs.github.com/rest/authentication/authenticating-to-the-rest-api#using-basic-authentication) with their client ID and client secret to access this endpoint.
///
/// `GET /marketplace_listing/stubbed/plans`
Future<ApiResult<List<MarketplaceListingPlan>, BasicError>> appsListPlansStubbed({int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/marketplace_listing/stubbed/plans',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => MarketplaceListingPlan.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List accounts for a plan (stubbed)
///
/// Returns repository and organization accounts associated with the specified plan, including free plans. For per-seat pricing, you see the list of accounts that have purchased the plan, including the number of seats purchased. When someone submits a plan change that won't be processed until the end of their billing cycle, you will also see the upcoming pending change.
/// 
/// GitHub Apps must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth apps must use [basic authentication](https://docs.github.com/rest/authentication/authenticating-to-the-rest-api#using-basic-authentication) with their client ID and client secret to access this endpoint.
///
/// `GET /marketplace_listing/stubbed/plans/{plan_id}/accounts`
Future<ApiResult<List<MarketplacePurchase>, BasicError>> appsListAccountsForPlanStubbed({required int planId, AppsListAccountsForPlanStubbedSort? sort, AppsListAccountsForPlanStubbedDirection? direction, int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sort != null) {
  queryParameters['sort'] = sort.toJson();
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/marketplace_listing/stubbed/plans/${Uri.encodeComponent(planId.toString())}/accounts',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => MarketplacePurchase.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an organization installation for the authenticated app
///
/// Enables an authenticated GitHub App to find the organization's installation information.
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `GET /orgs/{org}/installation`
Future<ApiResult<Installation, Never>> appsGetOrgInstallation({required String org, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/installation',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Installation.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a repository installation for the authenticated app
///
/// Enables an authenticated GitHub App to find the repository's installation information. The installation's account type will be either an organization or a user account, depending which account the repository belongs to.
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `GET /repos/{owner}/{repo}/installation`
Future<ApiResult<Installation, BasicError>> appsGetRepoInstallation({required String owner, required String repo, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/installation',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Installation.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List app installations accessible to the user access token
///
/// Lists installations of your GitHub App that the authenticated user has explicit permission (`:read`, `:write`, or `:admin`) to access.
/// 
/// The authenticated user has explicit permission to access repositories they own, repositories where they are a collaborator, and repositories that they can access through an organization membership.
/// 
/// You can find the permissions for the installation under the `permissions` key.
///
/// `GET /user/installations`
Future<ApiResult<AppsListInstallationsForAuthenticatedUserResponse, BasicError>> appsListInstallationsForAuthenticatedUser({int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/user/installations',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AppsListInstallationsForAuthenticatedUserResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List repositories accessible to the user access token
///
/// List repositories that the authenticated user has explicit permission (`:read`, `:write`, or `:admin`) to access for an installation.
/// 
/// The authenticated user has explicit permission to access repositories they own, repositories where they are a collaborator, and repositories that they can access through an organization membership.
/// 
/// The access the user has to each repository is included in the hash under the `permissions` key.
///
/// `GET /user/installations/{installation_id}/repositories`
Future<ApiResult<AppsListInstallationReposForAuthenticatedUserResponse, BasicError>> appsListInstallationReposForAuthenticatedUser({required int installationId, int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/user/installations/${Uri.encodeComponent(installationId.toString())}/repositories',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AppsListInstallationReposForAuthenticatedUserResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Add a repository to an app installation
///
/// Add a single repository to an installation. The authenticated user must have admin access to the repository.
/// 
/// This endpoint only works for PATs (classic) with the `repo` scope.
///
/// `PUT /user/installations/{installation_id}/repositories/{repository_id}`
Future<ApiResult<void, BasicError>> appsAddRepoToInstallationForAuthenticatedUser({required int installationId, required int repositoryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/user/installations/${Uri.encodeComponent(installationId.toString())}/repositories/${Uri.encodeComponent(repositoryId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Remove a repository from an app installation
///
/// Remove a single repository from an installation. The authenticated user must have admin access to the repository. The installation must have the `repository_selection` of `selected`.
/// 
/// This endpoint only works for PATs (classic) with the `repo` scope.
///
/// `DELETE /user/installations/{installation_id}/repositories/{repository_id}`
Future<ApiResult<void, BasicError>> appsRemoveRepoFromInstallationForAuthenticatedUser({required int installationId, required int repositoryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/user/installations/${Uri.encodeComponent(installationId.toString())}/repositories/${Uri.encodeComponent(repositoryId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List subscriptions for the authenticated user
///
/// Lists the active subscriptions for the authenticated user.
///
/// `GET /user/marketplace_purchases`
Future<ApiResult<List<UserMarketplacePurchase>, BasicError>> appsListSubscriptionsForAuthenticatedUser({int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/user/marketplace_purchases',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => UserMarketplacePurchase.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List subscriptions for the authenticated user (stubbed)
///
/// Lists the active subscriptions for the authenticated user.
///
/// `GET /user/marketplace_purchases/stubbed`
Future<ApiResult<List<UserMarketplacePurchase>, BasicError>> appsListSubscriptionsForAuthenticatedUserStubbed({int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/user/marketplace_purchases/stubbed',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => UserMarketplacePurchase.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a user installation for the authenticated app
///
/// Enables an authenticated GitHub App to find the user’s installation information.
/// 
/// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
///
/// `GET /users/{username}/installation`
Future<ApiResult<Installation, Never>> appsGetUserInstallation({required String username, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/users/${Uri.encodeComponent(username)}/installation',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Installation.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
