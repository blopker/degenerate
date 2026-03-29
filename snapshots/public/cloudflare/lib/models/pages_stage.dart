// GENERATED CODE - DO NOT MODIFY BY HAND

/// The current build stage.
final class PagesStageName {const PagesStageName._(this.value);

factory PagesStageName.fromJson(String json) { return switch (json) {
  'queued' => queued,
  'initialize' => initialize,
  'clone_repo' => cloneRepo,
  'build' => build,
  'deploy' => deploy,
  _ => PagesStageName._(json),
}; }

static const PagesStageName queued = PagesStageName._('queued');

static const PagesStageName initialize = PagesStageName._('initialize');

static const PagesStageName cloneRepo = PagesStageName._('clone_repo');

static const PagesStageName build = PagesStageName._('build');

static const PagesStageName deploy = PagesStageName._('deploy');

static const List<PagesStageName> values = [queued, initialize, cloneRepo, build, deploy];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PagesStageName && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PagesStageName($value)'; } 
 }
/// State of the current stage.
final class PagesStageStatus {const PagesStageStatus._(this.value);

factory PagesStageStatus.fromJson(String json) { return switch (json) {
  'success' => success,
  'idle' => idle,
  'active' => active,
  'failure' => failure,
  'canceled' => canceled,
  _ => PagesStageStatus._(json),
}; }

static const PagesStageStatus success = PagesStageStatus._('success');

static const PagesStageStatus idle = PagesStageStatus._('idle');

static const PagesStageStatus active = PagesStageStatus._('active');

static const PagesStageStatus failure = PagesStageStatus._('failure');

static const PagesStageStatus canceled = PagesStageStatus._('canceled');

static const List<PagesStageStatus> values = [success, idle, active, failure, canceled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PagesStageStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PagesStageStatus($value)'; } 
 }
/// The status of the deployment.
final class PagesStage {const PagesStage({required this.endedOn, required this.name, required this.startedOn, required this.status, });

factory PagesStage.fromJson(Map<String, dynamic> json) { return PagesStage(
  endedOn: json['ended_on'] != null ? DateTime.parse(json['ended_on'] as String) : null,
  name: PagesStageName.fromJson(json['name'] as String),
  startedOn: json['started_on'] != null ? DateTime.parse(json['started_on'] as String) : null,
  status: PagesStageStatus.fromJson(json['status'] as String),
); }

/// When the stage ended.
final DateTime? endedOn;

/// The current build stage.
final PagesStageName name;

/// When the stage started.
final DateTime? startedOn;

/// State of the current stage.
final PagesStageStatus status;

Map<String, dynamic> toJson() { return {
  if (endedOn != null) 'ended_on': endedOn?.toIso8601String(),
  'name': name.toJson(),
  if (startedOn != null) 'started_on': startedOn?.toIso8601String(),
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ended_on') && json['ended_on'] is String &&
      json.containsKey('name') &&
      json.containsKey('started_on') && json['started_on'] is String &&
      json.containsKey('status'); } 
PagesStage copyWith({DateTime? Function()? endedOn, PagesStageName? name, DateTime? Function()? startedOn, PagesStageStatus? status, }) { return PagesStage(
  endedOn: endedOn != null ? endedOn() : this.endedOn,
  name: name ?? this.name,
  startedOn: startedOn != null ? startedOn() : this.startedOn,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesStage &&
          endedOn == other.endedOn &&
          name == other.name &&
          startedOn == other.startedOn &&
          status == other.status; } 
@override int get hashCode { return Object.hash(endedOn, name, startedOn, status); } 
@override String toString() { return 'PagesStage(endedOn: $endedOn, name: $name, startedOn: $startedOn, status: $status)'; } 
 }
