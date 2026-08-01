// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BuildsPackageManager {const BuildsPackageManager._(this.value);

factory BuildsPackageManager.fromJson(String json) { return switch (json) {
  'npm' => npm,
  'yarn' => yarn,
  'pnpm' => pnpm,
  'bun' => bun,
  'uv' => uv,
  _ => BuildsPackageManager._(json),
}; }

static const BuildsPackageManager npm = BuildsPackageManager._('npm');

static const BuildsPackageManager yarn = BuildsPackageManager._('yarn');

static const BuildsPackageManager pnpm = BuildsPackageManager._('pnpm');

static const BuildsPackageManager bun = BuildsPackageManager._('bun');

static const BuildsPackageManager uv = BuildsPackageManager._('uv');

static const List<BuildsPackageManager> values = [npm, yarn, pnpm, bun, uv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BuildsPackageManager && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BuildsPackageManager($value)'; } 
 }
@immutable final class BuildsConfigAutofillResponse {const BuildsConfigAutofillResponse({this.configFile = const Omittable.absent(), this.defaultWorkerName = const Omittable.absent(), this.envWorkerNames = const Omittable.absent(), this.packageManager = const Omittable.absent(), this.scripts = const Omittable.absent(), });

factory BuildsConfigAutofillResponse.fromJson(Map<String, dynamic> json) { return BuildsConfigAutofillResponse(
  configFile: json.containsKey('config_file') ? Omittable(json['config_file'] as String?) : const Omittable.absent(),
  defaultWorkerName: json.containsKey('default_worker_name') ? Omittable(json['default_worker_name'] as String?) : const Omittable.absent(),
  envWorkerNames: json.containsKey('env_worker_names') ? Omittable((json['env_worker_names'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  packageManager: json.containsKey('package_manager') ? Omittable(json['package_manager'] != null ? BuildsPackageManager.fromJson(json['package_manager'] as String) : null) : const Omittable.absent(),
  scripts: json.containsKey('scripts') ? Omittable((json['scripts'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
); }

final Omittable<String?> configFile;

final Omittable<String?> defaultWorkerName;

final Omittable<Map<String,String>?> envWorkerNames;

final Omittable<BuildsPackageManager?> packageManager;

final Omittable<Map<String,String>?> scripts;

Map<String, dynamic> toJson() { return {
  if (configFile.isPresent) 'config_file': configFile.value,
  if (defaultWorkerName.isPresent) 'default_worker_name': defaultWorkerName.value,
  if (envWorkerNames.isPresent) 'env_worker_names': envWorkerNames.value,
  if (packageManager.isPresent) 'package_manager': packageManager.value?.toJson(),
  if (scripts.isPresent) 'scripts': scripts.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'config_file', 'default_worker_name', 'env_worker_names', 'package_manager', 'scripts'}.contains(key)); } 
BuildsConfigAutofillResponse copyWith({Omittable<String?>? configFile, Omittable<String?>? defaultWorkerName, Omittable<Map<String,String>?>? envWorkerNames, Omittable<BuildsPackageManager?>? packageManager, Omittable<Map<String,String>?>? scripts, }) { return BuildsConfigAutofillResponse(
  configFile: configFile ?? this.configFile,
  defaultWorkerName: defaultWorkerName ?? this.defaultWorkerName,
  envWorkerNames: envWorkerNames ?? this.envWorkerNames,
  packageManager: packageManager ?? this.packageManager,
  scripts: scripts ?? this.scripts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsConfigAutofillResponse &&
          configFile == other.configFile &&
          defaultWorkerName == other.defaultWorkerName &&
          envWorkerNames == other.envWorkerNames &&
          packageManager == other.packageManager &&
          scripts == other.scripts; } 
@override int get hashCode { return Object.hash(configFile, defaultWorkerName, envWorkerNames, packageManager, scripts); } 
@override String toString() { return 'BuildsConfigAutofillResponse(configFile: $configFile, defaultWorkerName: $defaultWorkerName, envWorkerNames: $envWorkerNames, packageManager: $packageManager, scripts: $scripts)'; } 
 }
