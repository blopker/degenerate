// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessAuthContextRuleAuthContext {const AccessAuthContextRuleAuthContext({required this.acId, required this.id, required this.identityProviderId, });

factory AccessAuthContextRuleAuthContext.fromJson(Map<String, dynamic> json) { return AccessAuthContextRuleAuthContext(
  acId: json['ac_id'] as String,
  id: json['id'] as String,
  identityProviderId: json['identity_provider_id'] as String,
); }

/// The ACID of an Authentication context.
final String acId;

/// The ID of an Authentication context.
final String id;

/// The ID of your Azure identity provider.
final String identityProviderId;

Map<String, dynamic> toJson() { return {
  'ac_id': acId,
  'id': id,
  'identity_provider_id': identityProviderId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ac_id') && json['ac_id'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('identity_provider_id') && json['identity_provider_id'] is String; } 
AccessAuthContextRuleAuthContext copyWith({String? acId, String? id, String? identityProviderId, }) { return AccessAuthContextRuleAuthContext(
  acId: acId ?? this.acId,
  id: id ?? this.id,
  identityProviderId: identityProviderId ?? this.identityProviderId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAuthContextRuleAuthContext &&
          acId == other.acId &&
          id == other.id &&
          identityProviderId == other.identityProviderId; } 
@override int get hashCode { return Object.hash(acId, id, identityProviderId); } 
@override String toString() { return 'AccessAuthContextRuleAuthContext(acId: $acId, id: $id, identityProviderId: $identityProviderId)'; } 
 }
