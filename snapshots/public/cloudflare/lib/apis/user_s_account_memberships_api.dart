// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/iam_collection_membership_response.dart';import '../models/iam_collection_membership_response_with_policies.dart';import '../models/iam_membership_components_schemas_identifier.dart';import '../models/iam_membership_with_policies.dart';import '../models/iam_properties_name.dart';import '../models/user_s_account_memberships_delete_membership_response_result.dart';import '../models/user_s_account_memberships_list_memberships_direction.dart';import '../models/user_s_account_memberships_list_memberships_order.dart';import '../models/user_s_account_memberships_list_memberships_response.dart';import '../models/user_s_account_memberships_list_memberships_status.dart';import '../models/user_s_account_memberships_update_membership_request.dart';/// UserSAccountMembershipsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class UserSAccountMembershipsApi with ApiExecutor {const UserSAccountMembershipsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Memberships
///
/// List memberships of accounts the user can access.
///
/// `GET /memberships`
Future<ApiResult<UserSAccountMembershipsListMembershipsResponse, Never>> userSAccountMembershipsListMemberships({IamPropertiesName? accountName, double? page, double? perPage, UserSAccountMembershipsListMembershipsOrder? order, UserSAccountMembershipsListMembershipsDirection? direction, IamPropertiesName? name, UserSAccountMembershipsListMembershipsStatus? status, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (accountName != null) {
  queryParameters['account.name'] = accountName.toString();
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
if (name != null) {
  queryParameters['name'] = name.toString();
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/memberships',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return OneOf2.parse(jsonDecode(response.body), fromA: (v) => IamCollectionMembershipResponse.fromJson(v as Map<String, dynamic>), fromB: (v) => IamCollectionMembershipResponseWithPolicies.fromJson(v as Map<String, dynamic>),);
  },
);
 } 
/// Membership Details
///
/// Get a specific membership.
///
/// `GET /memberships/{membership_id}`
Future<ApiResult<IamMembershipWithPolicies?, Never>> userSAccountMembershipsMembershipDetails({required IamMembershipComponentsSchemasIdentifier membershipId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/memberships/${Uri.encodeComponent(membershipId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? IamMembershipWithPolicies.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Membership
///
/// Accept or reject this account invitation.
///
/// `PUT /memberships/{membership_id}`
Future<ApiResult<IamMembershipWithPolicies?, Never>> userSAccountMembershipsUpdateMembership({required IamMembershipComponentsSchemasIdentifier membershipId, required UserSAccountMembershipsUpdateMembershipRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/memberships/${Uri.encodeComponent(membershipId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? IamMembershipWithPolicies.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Membership
///
/// Remove the associated member from an account.
///
/// `DELETE /memberships/{membership_id}`
Future<ApiResult<UserSAccountMembershipsDeleteMembershipResponseResult?, Never>> userSAccountMembershipsDeleteMembership({required IamMembershipComponentsSchemasIdentifier membershipId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/memberships/${Uri.encodeComponent(membershipId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? UserSAccountMembershipsDeleteMembershipResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
