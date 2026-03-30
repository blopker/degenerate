// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_schemas_policy_check_response_result_app_state.dart';import 'access_schemas_policy_check_response_result_user_identity.dart';final class AccessSchemasPolicyCheckResponseResult {const AccessSchemasPolicyCheckResponseResult({this.appState, this.userIdentity, });

factory AccessSchemasPolicyCheckResponseResult.fromJson(Map<String, dynamic> json) { return AccessSchemasPolicyCheckResponseResult(
  appState: json['app_state'] != null ? AccessSchemasPolicyCheckResponseResultAppState.fromJson(json['app_state'] as Map<String, dynamic>) : null,
  userIdentity: json['user_identity'] != null ? AccessSchemasPolicyCheckResponseResultUserIdentity.fromJson(json['user_identity'] as Map<String, dynamic>) : null,
); }

final AccessSchemasPolicyCheckResponseResultAppState? appState;

final AccessSchemasPolicyCheckResponseResultUserIdentity? userIdentity;

Map<String, dynamic> toJson() { return {
  if (appState != null) 'app_state': appState?.toJson(),
  if (userIdentity != null) 'user_identity': userIdentity?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'app_state', 'user_identity'}.contains(key)); } 
AccessSchemasPolicyCheckResponseResult copyWith({AccessSchemasPolicyCheckResponseResultAppState Function()? appState, AccessSchemasPolicyCheckResponseResultUserIdentity Function()? userIdentity, }) { return AccessSchemasPolicyCheckResponseResult(
  appState: appState != null ? appState() : this.appState,
  userIdentity: userIdentity != null ? userIdentity() : this.userIdentity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasPolicyCheckResponseResult &&
          appState == other.appState &&
          userIdentity == other.userIdentity; } 
@override int get hashCode { return Object.hash(appState, userIdentity); } 
@override String toString() { return 'AccessSchemasPolicyCheckResponseResult(appState: $appState, userIdentity: $userIdentity)'; } 
 }
