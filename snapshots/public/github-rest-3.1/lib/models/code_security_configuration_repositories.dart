// GENERATED CODE - DO NOT MODIFY BY HAND

import 'simple_repository.dart';/// The attachment status of the code security configuration on the repository.
final class CodeSecurityConfigurationRepositoriesStatus {const CodeSecurityConfigurationRepositoriesStatus._(this.value);

factory CodeSecurityConfigurationRepositoriesStatus.fromJson(String json) { return switch (json) {
  'attached' => attached,
  'attaching' => attaching,
  'detached' => detached,
  'removed' => removed,
  'enforced' => enforced,
  'failed' => failed,
  'updating' => updating,
  'removed_by_enterprise' => removedByEnterprise,
  _ => CodeSecurityConfigurationRepositoriesStatus._(json),
}; }

static const CodeSecurityConfigurationRepositoriesStatus attached = CodeSecurityConfigurationRepositoriesStatus._('attached');

static const CodeSecurityConfigurationRepositoriesStatus attaching = CodeSecurityConfigurationRepositoriesStatus._('attaching');

static const CodeSecurityConfigurationRepositoriesStatus detached = CodeSecurityConfigurationRepositoriesStatus._('detached');

static const CodeSecurityConfigurationRepositoriesStatus removed = CodeSecurityConfigurationRepositoriesStatus._('removed');

static const CodeSecurityConfigurationRepositoriesStatus enforced = CodeSecurityConfigurationRepositoriesStatus._('enforced');

static const CodeSecurityConfigurationRepositoriesStatus failed = CodeSecurityConfigurationRepositoriesStatus._('failed');

static const CodeSecurityConfigurationRepositoriesStatus updating = CodeSecurityConfigurationRepositoriesStatus._('updating');

static const CodeSecurityConfigurationRepositoriesStatus removedByEnterprise = CodeSecurityConfigurationRepositoriesStatus._('removed_by_enterprise');

static const List<CodeSecurityConfigurationRepositoriesStatus> values = [attached, attaching, detached, removed, enforced, failed, updating, removedByEnterprise];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeSecurityConfigurationRepositoriesStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeSecurityConfigurationRepositoriesStatus($value)'; } 
 }
/// Repositories associated with a code security configuration and attachment status
final class CodeSecurityConfigurationRepositories {const CodeSecurityConfigurationRepositories({this.status, this.repository, });

factory CodeSecurityConfigurationRepositories.fromJson(Map<String, dynamic> json) { return CodeSecurityConfigurationRepositories(
  status: json['status'] != null ? CodeSecurityConfigurationRepositoriesStatus.fromJson(json['status'] as String) : null,
  repository: json['repository'] != null ? SimpleRepository.fromJson(json['repository'] as Map<String, dynamic>) : null,
); }

/// The attachment status of the code security configuration on the repository.
final CodeSecurityConfigurationRepositoriesStatus? status;

final SimpleRepository? repository;

Map<String, dynamic> toJson() { return {
  if (status != null) 'status': status?.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CodeSecurityConfigurationRepositories copyWith({CodeSecurityConfigurationRepositoriesStatus Function()? status, SimpleRepository Function()? repository, }) { return CodeSecurityConfigurationRepositories(
  status: status != null ? status() : this.status,
  repository: repository != null ? repository() : this.repository,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecurityConfigurationRepositories &&
          status == other.status &&
          repository == other.repository; } 
@override int get hashCode { return Object.hash(status, repository); } 
@override String toString() { return 'CodeSecurityConfigurationRepositories(status: $status, repository: $repository)'; } 
 }
