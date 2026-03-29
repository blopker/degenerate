// GENERATED CODE - DO NOT MODIFY BY HAND

final class McnUpdateProviderRequest {const McnUpdateProviderRequest({this.awsArn, this.azureSubscriptionId, this.azureTenantId, this.description, this.friendlyName, this.gcpProjectId, this.gcpServiceAccountEmail, });

factory McnUpdateProviderRequest.fromJson(Map<String, dynamic> json) { return McnUpdateProviderRequest(
  awsArn: json['aws_arn'] as String?,
  azureSubscriptionId: json['azure_subscription_id'] as String?,
  azureTenantId: json['azure_tenant_id'] as String?,
  description: json['description'] as String?,
  friendlyName: json['friendly_name'] as String?,
  gcpProjectId: json['gcp_project_id'] as String?,
  gcpServiceAccountEmail: json['gcp_service_account_email'] as String?,
); }

final String? awsArn;

final String? azureSubscriptionId;

final String? azureTenantId;

final String? description;

final String? friendlyName;

final String? gcpProjectId;

final String? gcpServiceAccountEmail;

Map<String, dynamic> toJson() { return {
  'aws_arn': ?awsArn,
  'azure_subscription_id': ?azureSubscriptionId,
  'azure_tenant_id': ?azureTenantId,
  'description': ?description,
  'friendly_name': ?friendlyName,
  'gcp_project_id': ?gcpProjectId,
  'gcp_service_account_email': ?gcpServiceAccountEmail,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
McnUpdateProviderRequest copyWith({String Function()? awsArn, String Function()? azureSubscriptionId, String Function()? azureTenantId, String Function()? description, String Function()? friendlyName, String Function()? gcpProjectId, String Function()? gcpServiceAccountEmail, }) { return McnUpdateProviderRequest(
  awsArn: awsArn != null ? awsArn() : this.awsArn,
  azureSubscriptionId: azureSubscriptionId != null ? azureSubscriptionId() : this.azureSubscriptionId,
  azureTenantId: azureTenantId != null ? azureTenantId() : this.azureTenantId,
  description: description != null ? description() : this.description,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  gcpProjectId: gcpProjectId != null ? gcpProjectId() : this.gcpProjectId,
  gcpServiceAccountEmail: gcpServiceAccountEmail != null ? gcpServiceAccountEmail() : this.gcpServiceAccountEmail,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnUpdateProviderRequest &&
          awsArn == other.awsArn &&
          azureSubscriptionId == other.azureSubscriptionId &&
          azureTenantId == other.azureTenantId &&
          description == other.description &&
          friendlyName == other.friendlyName &&
          gcpProjectId == other.gcpProjectId &&
          gcpServiceAccountEmail == other.gcpServiceAccountEmail; } 
@override int get hashCode { return Object.hash(awsArn, azureSubscriptionId, azureTenantId, description, friendlyName, gcpProjectId, gcpServiceAccountEmail); } 
@override String toString() { return 'McnUpdateProviderRequest(awsArn: $awsArn, azureSubscriptionId: $azureSubscriptionId, azureTenantId: $azureTenantId, description: $description, friendlyName: $friendlyName, gcpProjectId: $gcpProjectId, gcpServiceAccountEmail: $gcpServiceAccountEmail)'; } 
 }
