// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/email_security_account_id.dart';import '../models/email_security_allow_policy_id.dart';import '../models/email_security_batch_allow_policies_request.dart';import '../models/email_security_batch_allow_policies_response.dart';import '../models/email_security_batch_blocked_senders_request.dart';import '../models/email_security_batch_blocked_senders_response.dart';import '../models/email_security_batch_sending_domain_restrictions_request.dart';import '../models/email_security_batch_sending_domain_restrictions_response.dart';import '../models/email_security_batch_trusted_domains_request.dart';import '../models/email_security_batch_trusted_domains_response.dart';import '../models/email_security_blocked_sender_id.dart';import '../models/email_security_create_allow_policy.dart';import '../models/email_security_create_allow_policy_response.dart';import '../models/email_security_create_blocked_sender.dart';import '../models/email_security_create_blocked_sender_response.dart';import '../models/email_security_create_display_name.dart';import '../models/email_security_create_display_name_response.dart';import '../models/email_security_create_trusted_domain_request.dart';import '../models/email_security_create_trusted_domain_response.dart';import '../models/email_security_delete_allow_policy_response.dart';import '../models/email_security_delete_blocked_sender_response.dart';import '../models/email_security_delete_display_name_response.dart';import '../models/email_security_delete_domain_response.dart';import '../models/email_security_delete_domains_request.dart';import '../models/email_security_delete_domains_response.dart';import '../models/email_security_delete_trusted_domain_response.dart';import '../models/email_security_delivery_mode.dart';import '../models/email_security_get_allow_policy_response.dart';import '../models/email_security_get_blocked_sender_response.dart';import '../models/email_security_get_display_name_response.dart';import '../models/email_security_get_domain_response.dart';import '../models/email_security_get_trusted_domain_response.dart';import '../models/email_security_list_allow_policies_order.dart';import '../models/email_security_list_allow_policies_response.dart';import '../models/email_security_list_blocked_senders_order.dart';import '../models/email_security_list_blocked_senders_response.dart';import '../models/email_security_list_display_names_order.dart';import '../models/email_security_list_display_names_provenance.dart';import '../models/email_security_list_display_names_response.dart';import '../models/email_security_list_domains_order.dart';import '../models/email_security_list_domains_response.dart';import '../models/email_security_list_trusted_domains_order.dart';import '../models/email_security_list_trusted_domains_response.dart';import '../models/email_security_pattern_type.dart';import '../models/email_security_sorting_direction.dart';import '../models/email_security_trusted_domain_id.dart';import '../models/email_security_update_allow_policy.dart';import '../models/email_security_update_allow_policy_response.dart';import '../models/email_security_update_blocked_sender.dart';import '../models/email_security_update_blocked_sender_response.dart';import '../models/email_security_update_display_name_request.dart';import '../models/email_security_update_display_name_response.dart';import '../models/email_security_update_domain_request.dart';import '../models/email_security_update_domain_response.dart';import '../models/email_security_update_trusted_domain_request.dart';import '../models/email_security_update_trusted_domain_response.dart';/// EmailSecuritySettingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class EmailSecuritySettingsApi with ApiExecutor {const EmailSecuritySettingsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List email allow policies
///
/// Lists, searches, and sorts an account’s email allow policies.
///
/// `GET /accounts/{account_id}/email-security/settings/allow_policies`
Future<ApiResult<EmailSecurityListAllowPoliciesResponse, Never>> emailSecurityListAllowPolicies({required EmailSecurityAccountId accountId, int? page, int? perPage, EmailSecurityListAllowPoliciesOrder? order, EmailSecuritySortingDirection? direction, String? search, bool? isSender, bool? isTrustedSender, bool? isRecipient, bool? isExemptRecipient, bool? isSpoof, bool? isAcceptableSender, bool? verifySender, EmailSecurityPatternType? patternType, String? pattern, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
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
if (search != null) {
  queryParameters['search'] = search;
}
if (isSender != null) {
  queryParameters['is_sender'] = isSender.toString();
}
if (isTrustedSender != null) {
  queryParameters['is_trusted_sender'] = isTrustedSender.toString();
}
if (isRecipient != null) {
  queryParameters['is_recipient'] = isRecipient.toString();
}
if (isExemptRecipient != null) {
  queryParameters['is_exempt_recipient'] = isExemptRecipient.toString();
}
if (isSpoof != null) {
  queryParameters['is_spoof'] = isSpoof.toString();
}
if (isAcceptableSender != null) {
  queryParameters['is_acceptable_sender'] = isAcceptableSender.toString();
}
if (verifySender != null) {
  queryParameters['verify_sender'] = verifySender.toString();
}
if (patternType != null) {
  queryParameters['pattern_type'] = patternType.toJson();
}
if (pattern != null) {
  queryParameters['pattern'] = pattern;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/allow_policies',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityListAllowPoliciesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create an email allow policy
///
/// Creates a new email allow policy that permits specific senders, domains, or patterns
/// to bypass security scanning.
///
/// `POST /accounts/{account_id}/email-security/settings/allow_policies`
Future<ApiResult<EmailSecurityCreateAllowPolicyResponse, Never>> emailSecurityCreateAllowPolicy({required EmailSecurityAccountId accountId, required EmailSecurityCreateAllowPolicy body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/allow_policies',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityCreateAllowPolicyResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an email allow policy
///
/// Retrieves details for a specific email allow policy, including its matching criteria
/// and scope.
///
/// `GET /accounts/{account_id}/email-security/settings/allow_policies/{policy_id}`
Future<ApiResult<EmailSecurityGetAllowPolicyResponse, Never>> emailSecurityGetAllowPolicy({required EmailSecurityAccountId accountId, required EmailSecurityAllowPolicyId policyId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/allow_policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityGetAllowPolicyResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an email allow policy
///
/// Updates an existing email allow policy, modifying its matching criteria or scope.
///
/// `PATCH /accounts/{account_id}/email-security/settings/allow_policies/{policy_id}`
Future<ApiResult<EmailSecurityUpdateAllowPolicyResponse, Never>> emailSecurityUpdateAllowPolicy({required EmailSecurityAccountId accountId, required EmailSecurityAllowPolicyId policyId, required EmailSecurityUpdateAllowPolicy body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/allow_policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityUpdateAllowPolicyResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an email allow policy
///
/// Removes an email allow policy. Previously allowed senders will be subject to normal
/// security scanning.
///
/// `DELETE /accounts/{account_id}/email-security/settings/allow_policies/{policy_id}`
Future<ApiResult<EmailSecurityDeleteAllowPolicyResponse, Never>> emailSecurityDeleteAllowPolicy({required EmailSecurityAccountId accountId, required EmailSecurityAllowPolicyId policyId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/allow_policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityDeleteAllowPolicyResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Batch Allow Policies
///
/// Send a Batch of Allow Policies API calls to be executed together.
///
/// `POST /accounts/{account_id}/email-security/settings/allow_policies/batch`
Future<ApiResult<EmailSecurityBatchAllowPoliciesResponse, Never>> emailSecurityBatchAllowPolicies({required EmailSecurityAccountId accountId, required EmailSecurityBatchAllowPoliciesRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/allow_policies/batch',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityBatchAllowPoliciesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List blocked email senders
///
/// Lists all blocked sender entries with their patterns and block reasons.
///
/// `GET /accounts/{account_id}/email-security/settings/block_senders`
Future<ApiResult<EmailSecurityListBlockedSendersResponse, Never>> emailSecurityListBlockedSenders({required EmailSecurityAccountId accountId, int? page, int? perPage, EmailSecurityListBlockedSendersOrder? order, EmailSecuritySortingDirection? direction, String? search, EmailSecurityPatternType? patternType, String? pattern, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
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
if (search != null) {
  queryParameters['search'] = search;
}
if (patternType != null) {
  queryParameters['pattern_type'] = patternType.toJson();
}
if (pattern != null) {
  queryParameters['pattern'] = pattern;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/block_senders',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityListBlockedSendersResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a blocked email sender
///
/// Adds a sender pattern to the email block list, preventing messages from matching
/// senders from being delivered.
///
/// `POST /accounts/{account_id}/email-security/settings/block_senders`
Future<ApiResult<EmailSecurityCreateBlockedSenderResponse, Never>> emailSecurityCreateBlockedSender({required EmailSecurityAccountId accountId, required EmailSecurityCreateBlockedSender body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/block_senders',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityCreateBlockedSenderResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a blocked email sender
///
/// Gets information about a specific blocked sender entry, including the pattern and
/// block reason.
///
/// `GET /accounts/{account_id}/email-security/settings/block_senders/{pattern_id}`
Future<ApiResult<EmailSecurityGetBlockedSenderResponse, Never>> emailSecurityGetBlockedSender({required EmailSecurityAccountId accountId, required EmailSecurityBlockedSenderId patternId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/block_senders/${Uri.encodeComponent(patternId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityGetBlockedSenderResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a blocked email sender
///
/// Modifies a blocked sender entry, updating its pattern or block reason.
///
/// `PATCH /accounts/{account_id}/email-security/settings/block_senders/{pattern_id}`
Future<ApiResult<EmailSecurityUpdateBlockedSenderResponse, Never>> emailSecurityUpdateBlockedSender({required EmailSecurityAccountId accountId, required EmailSecurityBlockedSenderId patternId, required EmailSecurityUpdateBlockedSender body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/block_senders/${Uri.encodeComponent(patternId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityUpdateBlockedSenderResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a blocked email sender
///
/// Removes a sender from the email block list, allowing their messages to be delivered
/// normally.
///
/// `DELETE /accounts/{account_id}/email-security/settings/block_senders/{pattern_id}`
Future<ApiResult<EmailSecurityDeleteBlockedSenderResponse, Never>> emailSecurityDeleteBlockedSender({required EmailSecurityAccountId accountId, required EmailSecurityBlockedSenderId patternId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/block_senders/${Uri.encodeComponent(patternId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityDeleteBlockedSenderResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Batch Block Senders
///
/// Send a Batch of Block Senders API calls to be executed together.
///
/// `POST /accounts/{account_id}/email-security/settings/block_senders/batch`
Future<ApiResult<EmailSecurityBatchBlockedSendersResponse, Never>> emailSecurityBatchBlockedSenders({required EmailSecurityAccountId accountId, required EmailSecurityBatchBlockedSendersRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/block_senders/batch',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityBatchBlockedSendersResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List protected email domains
///
/// Lists, searches, and sorts an account’s email domains.
///
/// `GET /accounts/{account_id}/email-security/settings/domains`
Future<ApiResult<EmailSecurityListDomainsResponse, Never>> emailSecurityListDomains({required EmailSecurityAccountId accountId, int? page, int? perPage, EmailSecurityListDomainsOrder? order, EmailSecuritySortingDirection? direction, String? search, EmailSecurityDeliveryMode? allowedDeliveryMode, List<String>? domain, EmailSecurityDeliveryMode? activeDeliveryMode, String? integrationId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
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
if (search != null) {
  queryParameters['search'] = search;
}
if (allowedDeliveryMode != null) {
  queryParameters['allowed_delivery_mode'] = allowedDeliveryMode.toJson();
}
if (domain != null) {
for (final item in domain) {
  queryParametersList.add(ApiQueryParameter(name: 'domain', value: item, allowReserved: false));
}
}
if (activeDeliveryMode != null) {
  queryParameters['active_delivery_mode'] = activeDeliveryMode.toJson();
}
if (integrationId != null) {
  queryParameters['integration_id'] = integrationId;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/domains',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityListDomainsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Unprotect multiple email domains
///
/// Bulk removes multiple domains from email security configuration in a single request.
///
/// `DELETE /accounts/{account_id}/email-security/settings/domains`
Future<ApiResult<EmailSecurityDeleteDomainsResponse, Never>> emailSecurityDeleteDomains({required EmailSecurityAccountId accountId, required List<EmailSecurityDeleteDomainsRequest> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/domains',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityDeleteDomainsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an email domain
///
/// Gets configuration details for a specific domain in email security.
///
/// `GET /accounts/{account_id}/email-security/settings/domains/{domain_id}`
Future<ApiResult<EmailSecurityGetDomainResponse, Never>> emailSecurityGetDomain({required EmailSecurityAccountId accountId, required int domainId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/domains/${Uri.encodeComponent(domainId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityGetDomainResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an email domain
///
/// Updates configuration for a domain in email security.
///
/// `PATCH /accounts/{account_id}/email-security/settings/domains/{domain_id}`
Future<ApiResult<EmailSecurityUpdateDomainResponse, Never>> emailSecurityUpdateDomain({required EmailSecurityAccountId accountId, required int domainId, required EmailSecurityUpdateDomainRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/domains/${Uri.encodeComponent(domainId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityUpdateDomainResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Unprotect an email domain
///
/// `DELETE /accounts/{account_id}/email-security/settings/domains/{domain_id}`
Future<ApiResult<EmailSecurityDeleteDomainResponse, Never>> emailSecurityDeleteDomain({required EmailSecurityAccountId accountId, required int domainId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/domains/${Uri.encodeComponent(domainId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityDeleteDomainResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List entries in impersonation registry
///
/// Lists, searches, and sorts entries in the impersonation registry.
///
/// `GET /accounts/{account_id}/email-security/settings/impersonation_registry`
Future<ApiResult<EmailSecurityListDisplayNamesResponse, Never>> emailSecurityListDisplayNames({required EmailSecurityAccountId accountId, int? page, int? perPage, EmailSecurityListDisplayNamesOrder? order, EmailSecuritySortingDirection? direction, String? search, EmailSecurityListDisplayNamesProvenance? provenance, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
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
if (search != null) {
  queryParameters['search'] = search;
}
if (provenance != null) {
  queryParameters['provenance'] = provenance.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/impersonation_registry',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityListDisplayNamesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create an entry in impersonation registry
///
/// Creates a display name entry for email security impersonation protection.
///
/// `POST /accounts/{account_id}/email-security/settings/impersonation_registry`
Future<ApiResult<EmailSecurityCreateDisplayNameResponse, Never>> emailSecurityCreateDisplayName({required EmailSecurityAccountId accountId, required EmailSecurityCreateDisplayName body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/impersonation_registry',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityCreateDisplayNameResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an entry in impersonation registry
///
/// Retrieves a display name entry used for impersonation protection.
///
/// `GET /accounts/{account_id}/email-security/settings/impersonation_registry/{display_name_id}`
Future<ApiResult<EmailSecurityGetDisplayNameResponse, Never>> emailSecurityGetDisplayName({required EmailSecurityAccountId accountId, required int displayNameId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/impersonation_registry/${Uri.encodeComponent(displayNameId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityGetDisplayNameResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an entry in impersonation registry
///
/// Updates a display name entry used for impersonation protection.
///
/// `PATCH /accounts/{account_id}/email-security/settings/impersonation_registry/{display_name_id}`
Future<ApiResult<EmailSecurityUpdateDisplayNameResponse, Never>> emailSecurityUpdateDisplayName({required EmailSecurityAccountId accountId, required int displayNameId, required EmailSecurityUpdateDisplayNameRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/impersonation_registry/${Uri.encodeComponent(displayNameId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityUpdateDisplayNameResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an entry from impersonation registry
///
/// Removes a display name from impersonation protection monitoring.
///
/// `DELETE /accounts/{account_id}/email-security/settings/impersonation_registry/{display_name_id}`
Future<ApiResult<EmailSecurityDeleteDisplayNameResponse, Never>> emailSecurityDeleteDisplayName({required EmailSecurityAccountId accountId, required int displayNameId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/impersonation_registry/${Uri.encodeComponent(displayNameId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityDeleteDisplayNameResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Batch Sending Domain Restrictions
///
/// Send a Batch of `sending_domain_restrictions` API calls to be executed together.
///
/// `POST /accounts/{account_id}/email-security/settings/sending_domain_restrictions/batch`
Future<ApiResult<EmailSecurityBatchSendingDomainRestrictionsResponse, Never>> emailSecurityBatchSendingDomainRestrictions({required EmailSecurityAccountId accountId, required EmailSecurityBatchSendingDomainRestrictionsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/sending_domain_restrictions/batch',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityBatchSendingDomainRestrictionsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List trusted email domains
///
/// Lists, searches, and sorts an account’s trusted email domains.
///
/// `GET /accounts/{account_id}/email-security/settings/trusted_domains`
Future<ApiResult<EmailSecurityListTrustedDomainsResponse, Never>> emailSecurityListTrustedDomains({required EmailSecurityAccountId accountId, int? page, int? perPage, EmailSecurityListTrustedDomainsOrder? order, EmailSecuritySortingDirection? direction, String? search, bool? isRecent, bool? isSimilarity, String? pattern, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
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
if (search != null) {
  queryParameters['search'] = search;
}
if (isRecent != null) {
  queryParameters['is_recent'] = isRecent.toString();
}
if (isSimilarity != null) {
  queryParameters['is_similarity'] = isSimilarity.toString();
}
if (pattern != null) {
  queryParameters['pattern'] = pattern;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/trusted_domains',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityListTrustedDomainsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a trusted email domain
///
/// Adds a domain to the trusted domains list for email security, reducing false positive
/// detections.
///
/// `POST /accounts/{account_id}/email-security/settings/trusted_domains`
Future<ApiResult<EmailSecurityCreateTrustedDomainResponse, Never>> emailSecurityCreateTrustedDomain({required EmailSecurityAccountId accountId, required EmailSecurityCreateTrustedDomainRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/trusted_domains',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityCreateTrustedDomainResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a trusted email domain
///
/// Gets information about a specific trusted domain entry.
///
/// `GET /accounts/{account_id}/email-security/settings/trusted_domains/{trusted_domain_id}`
Future<ApiResult<EmailSecurityGetTrustedDomainResponse, Never>> emailSecurityGetTrustedDomain({required EmailSecurityAccountId accountId, required EmailSecurityTrustedDomainId trustedDomainId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/trusted_domains/${Uri.encodeComponent(trustedDomainId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityGetTrustedDomainResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a trusted email domain
///
/// Modifies a trusted domain entry's configuration.
///
/// `PATCH /accounts/{account_id}/email-security/settings/trusted_domains/{trusted_domain_id}`
Future<ApiResult<EmailSecurityUpdateTrustedDomainResponse, Never>> emailSecurityUpdateTrustedDomain({required EmailSecurityAccountId accountId, required EmailSecurityTrustedDomainId trustedDomainId, required EmailSecurityUpdateTrustedDomainRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/trusted_domains/${Uri.encodeComponent(trustedDomainId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityUpdateTrustedDomainResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a trusted email domain
///
/// Removes a domain from the trusted domains list, subjecting it to normal security
/// scanning.
///
/// `DELETE /accounts/{account_id}/email-security/settings/trusted_domains/{trusted_domain_id}`
Future<ApiResult<EmailSecurityDeleteTrustedDomainResponse, Never>> emailSecurityDeleteTrustedDomain({required EmailSecurityAccountId accountId, required EmailSecurityTrustedDomainId trustedDomainId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/trusted_domains/${Uri.encodeComponent(trustedDomainId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityDeleteTrustedDomainResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Batch Trusted Domains
///
/// Send a Batch of Trusted Domains API calls to be executed together.
///
/// `POST /accounts/{account_id}/email-security/settings/trusted_domains/batch`
Future<ApiResult<EmailSecurityBatchTrustedDomainsResponse, Never>> emailSecurityBatchTrustedDomains({required EmailSecurityAccountId accountId, required EmailSecurityBatchTrustedDomainsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/settings/trusted_domains/batch',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityBatchTrustedDomainsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
