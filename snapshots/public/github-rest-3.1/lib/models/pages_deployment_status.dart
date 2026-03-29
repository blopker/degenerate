// GENERATED CODE - DO NOT MODIFY BY HAND

/// The current status of the deployment.
final class PagesDeploymentStatusStatus {const PagesDeploymentStatusStatus._(this.value);

factory PagesDeploymentStatusStatus.fromJson(String json) { return switch (json) {
  'deployment_in_progress' => deploymentInProgress,
  'syncing_files' => syncingFiles,
  'finished_file_sync' => finishedFileSync,
  'updating_pages' => updatingPages,
  'purging_cdn' => purgingCdn,
  'deployment_cancelled' => deploymentCancelled,
  'deployment_failed' => deploymentFailed,
  'deployment_content_failed' => deploymentContentFailed,
  'deployment_attempt_error' => deploymentAttemptError,
  'deployment_lost' => deploymentLost,
  'succeed' => succeed,
  _ => PagesDeploymentStatusStatus._(json),
}; }

static const PagesDeploymentStatusStatus deploymentInProgress = PagesDeploymentStatusStatus._('deployment_in_progress');

static const PagesDeploymentStatusStatus syncingFiles = PagesDeploymentStatusStatus._('syncing_files');

static const PagesDeploymentStatusStatus finishedFileSync = PagesDeploymentStatusStatus._('finished_file_sync');

static const PagesDeploymentStatusStatus updatingPages = PagesDeploymentStatusStatus._('updating_pages');

static const PagesDeploymentStatusStatus purgingCdn = PagesDeploymentStatusStatus._('purging_cdn');

static const PagesDeploymentStatusStatus deploymentCancelled = PagesDeploymentStatusStatus._('deployment_cancelled');

static const PagesDeploymentStatusStatus deploymentFailed = PagesDeploymentStatusStatus._('deployment_failed');

static const PagesDeploymentStatusStatus deploymentContentFailed = PagesDeploymentStatusStatus._('deployment_content_failed');

static const PagesDeploymentStatusStatus deploymentAttemptError = PagesDeploymentStatusStatus._('deployment_attempt_error');

static const PagesDeploymentStatusStatus deploymentLost = PagesDeploymentStatusStatus._('deployment_lost');

static const PagesDeploymentStatusStatus succeed = PagesDeploymentStatusStatus._('succeed');

static const List<PagesDeploymentStatusStatus> values = [deploymentInProgress, syncingFiles, finishedFileSync, updatingPages, purgingCdn, deploymentCancelled, deploymentFailed, deploymentContentFailed, deploymentAttemptError, deploymentLost, succeed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PagesDeploymentStatusStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PagesDeploymentStatusStatus($value)'; } 
 }
final class PagesDeploymentStatus {const PagesDeploymentStatus({this.status});

factory PagesDeploymentStatus.fromJson(Map<String, dynamic> json) { return PagesDeploymentStatus(
  status: json['status'] != null ? PagesDeploymentStatusStatus.fromJson(json['status'] as String) : null,
); }

/// The current status of the deployment.
final PagesDeploymentStatusStatus? status;

Map<String, dynamic> toJson() { return {
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PagesDeploymentStatus copyWith({PagesDeploymentStatusStatus Function()? status}) { return PagesDeploymentStatus(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentStatus &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'PagesDeploymentStatus(status: $status)'; } 
 }
