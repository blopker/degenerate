// GENERATED CODE - DO NOT MODIFY BY HAND

/// Status of the certificate activation.
final class TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus {const TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus._(this.value);

factory TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus.fromJson(String json) { return switch (json) {
  'initializing' => initializing,
  'pending_deployment' => pendingDeployment,
  'pending_deletion' => pendingDeletion,
  'active' => active,
  'deleted' => deleted,
  'deployment_timed_out' => deploymentTimedOut,
  'deletion_timed_out' => deletionTimedOut,
  _ => TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus._(json),
}; }

static const TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus initializing = TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus._('initializing');

static const TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus pendingDeployment = TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus._('pending_deployment');

static const TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus pendingDeletion = TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus._('pending_deletion');

static const TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus active = TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus._('active');

static const TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus deleted = TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus._('deleted');

static const TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus deploymentTimedOut = TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus._('deployment_timed_out');

static const TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus deletionTimedOut = TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus._('deletion_timed_out');

static const List<TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus> values = [initializing, pendingDeployment, pendingDeletion, active, deleted, deploymentTimedOut, deletionTimedOut];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus($value)'; } 
 }
