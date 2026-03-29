// GENERATED CODE - DO NOT MODIFY BY HAND

/// Status of the certificate or the association.
final class TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus {const TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus._(this.value);

factory TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus.fromJson(String json) { return switch (json) {
  'initializing' => initializing,
  'pending_deployment' => pendingDeployment,
  'pending_deletion' => pendingDeletion,
  'active' => active,
  'deleted' => deleted,
  'deployment_timed_out' => deploymentTimedOut,
  'deletion_timed_out' => deletionTimedOut,
  _ => TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus._(json),
}; }

static const TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus initializing = TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus._('initializing');

static const TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus pendingDeployment = TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus._('pending_deployment');

static const TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus pendingDeletion = TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus._('pending_deletion');

static const TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus active = TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus._('active');

static const TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus deleted = TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus._('deleted');

static const TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus deploymentTimedOut = TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus._('deployment_timed_out');

static const TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus deletionTimedOut = TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus._('deletion_timed_out');

static const List<TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus> values = [initializing, pendingDeployment, pendingDeletion, active, deleted, deploymentTimedOut, deletionTimedOut];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesHostnameAuthenticatedOriginPullComponentsSchemasStatus($value)'; } 
 }
