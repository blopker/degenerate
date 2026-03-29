// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'app_permissions.dart';import 'repository.dart';final class InstallationTokenRepositorySelection {const InstallationTokenRepositorySelection._(this.value);

factory InstallationTokenRepositorySelection.fromJson(String json) { return switch (json) {
  'all' => all,
  'selected' => selected,
  _ => InstallationTokenRepositorySelection._(json),
}; }

static const InstallationTokenRepositorySelection all = InstallationTokenRepositorySelection._('all');

static const InstallationTokenRepositorySelection selected = InstallationTokenRepositorySelection._('selected');

static const List<InstallationTokenRepositorySelection> values = [all, selected];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InstallationTokenRepositorySelection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InstallationTokenRepositorySelection($value)'; } 
 }
/// Authentication token for a GitHub App installed on a user or org.
final class InstallationToken {const InstallationToken({required this.token, required this.expiresAt, this.permissions, this.repositorySelection, this.repositories, this.singleFile, this.hasMultipleSingleFiles, this.singleFilePaths, });

factory InstallationToken.fromJson(Map<String, dynamic> json) { return InstallationToken(
  token: json['token'] as String,
  expiresAt: json['expires_at'] as String,
  permissions: json['permissions'] != null ? AppPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null,
  repositorySelection: json['repository_selection'] != null ? InstallationTokenRepositorySelection.fromJson(json['repository_selection'] as String) : null,
  repositories: (json['repositories'] as List<dynamic>?)?.map((e) => Repository.fromJson(e as Map<String, dynamic>)).toList(),
  singleFile: json['single_file'] as String?,
  hasMultipleSingleFiles: json['has_multiple_single_files'] as bool?,
  singleFilePaths: (json['single_file_paths'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final String token;

final String expiresAt;

final AppPermissions? permissions;

final InstallationTokenRepositorySelection? repositorySelection;

final List<Repository>? repositories;

final String? singleFile;

final bool? hasMultipleSingleFiles;

final List<String>? singleFilePaths;

Map<String, dynamic> toJson() { return {
  'token': token,
  'expires_at': expiresAt,
  if (permissions != null) 'permissions': permissions?.toJson(),
  if (repositorySelection != null) 'repository_selection': repositorySelection?.toJson(),
  if (repositories != null) 'repositories': repositories?.map((e) => e.toJson()).toList(),
  'single_file': ?singleFile,
  'has_multiple_single_files': ?hasMultipleSingleFiles,
  'single_file_paths': ?singleFilePaths,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('token') && json['token'] is String &&
      json.containsKey('expires_at') && json['expires_at'] is String; } 
InstallationToken copyWith({String? token, String? expiresAt, AppPermissions Function()? permissions, InstallationTokenRepositorySelection Function()? repositorySelection, List<Repository> Function()? repositories, String Function()? singleFile, bool Function()? hasMultipleSingleFiles, List<String> Function()? singleFilePaths, }) { return InstallationToken(
  token: token ?? this.token,
  expiresAt: expiresAt ?? this.expiresAt,
  permissions: permissions != null ? permissions() : this.permissions,
  repositorySelection: repositorySelection != null ? repositorySelection() : this.repositorySelection,
  repositories: repositories != null ? repositories() : this.repositories,
  singleFile: singleFile != null ? singleFile() : this.singleFile,
  hasMultipleSingleFiles: hasMultipleSingleFiles != null ? hasMultipleSingleFiles() : this.hasMultipleSingleFiles,
  singleFilePaths: singleFilePaths != null ? singleFilePaths() : this.singleFilePaths,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InstallationToken &&
          token == other.token &&
          expiresAt == other.expiresAt &&
          permissions == other.permissions &&
          repositorySelection == other.repositorySelection &&
          listEquals(repositories, other.repositories) &&
          singleFile == other.singleFile &&
          hasMultipleSingleFiles == other.hasMultipleSingleFiles &&
          listEquals(singleFilePaths, other.singleFilePaths); } 
@override int get hashCode { return Object.hash(token, expiresAt, permissions, repositorySelection, Object.hashAll(repositories ?? const []), singleFile, hasMultipleSingleFiles, Object.hashAll(singleFilePaths ?? const [])); } 
@override String toString() { return 'InstallationToken(token: $token, expiresAt: $expiresAt, permissions: $permissions, repositorySelection: $repositorySelection, repositories: $repositories, singleFile: $singleFile, hasMultipleSingleFiles: $hasMultipleSingleFiles, singleFilePaths: $singleFilePaths)'; } 
 }
