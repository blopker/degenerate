// GENERATED CODE - DO NOT MODIFY BY HAND

import 'resource_sharing_account_id.dart';import 'resource_sharing_organization_id.dart';/// Account or organization ID must be provided.
final class ResourceSharingCreateShareRecipientRequest {const ResourceSharingCreateShareRecipientRequest({this.accountId, this.organizationId, });

factory ResourceSharingCreateShareRecipientRequest.fromJson(Map<String, dynamic> json) { return ResourceSharingCreateShareRecipientRequest(
  accountId: json['account_id'] != null ? ResourceSharingAccountId.fromJson(json['account_id'] as String) : null,
  organizationId: json['organization_id'] != null ? ResourceSharingOrganizationId.fromJson(json['organization_id'] as String) : null,
); }

/// Account identifier.
final ResourceSharingAccountId? accountId;

final ResourceSharingOrganizationId? organizationId;

Map<String, dynamic> toJson() { return {
  if (accountId != null) 'account_id': accountId?.toJson(),
  if (organizationId != null) 'organization_id': organizationId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_id', 'organization_id'}.contains(key)); } 
ResourceSharingCreateShareRecipientRequest copyWith({ResourceSharingAccountId Function()? accountId, ResourceSharingOrganizationId Function()? organizationId, }) { return ResourceSharingCreateShareRecipientRequest(
  accountId: accountId != null ? accountId() : this.accountId,
  organizationId: organizationId != null ? organizationId() : this.organizationId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceSharingCreateShareRecipientRequest &&
          accountId == other.accountId &&
          organizationId == other.organizationId; } 
@override int get hashCode { return Object.hash(accountId, organizationId); } 
@override String toString() { return 'ResourceSharingCreateShareRecipientRequest(accountId: $accountId, organizationId: $organizationId)'; } 
 }
