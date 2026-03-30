// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';/// Boolean string indicating if the working directory has uncommitted changes.
final class PagesDeploymentCreateDeploymentRequestCommitDirty {const PagesDeploymentCreateDeploymentRequestCommitDirty._(this.value);

factory PagesDeploymentCreateDeploymentRequestCommitDirty.fromJson(String json) { return switch (json) {
  'true' => $true,
  'false' => $false,
  _ => PagesDeploymentCreateDeploymentRequestCommitDirty._(json),
}; }

static const PagesDeploymentCreateDeploymentRequestCommitDirty $true = PagesDeploymentCreateDeploymentRequestCommitDirty._('true');

static const PagesDeploymentCreateDeploymentRequestCommitDirty $false = PagesDeploymentCreateDeploymentRequestCommitDirty._('false');

static const List<PagesDeploymentCreateDeploymentRequestCommitDirty> values = [$true, $false];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PagesDeploymentCreateDeploymentRequestCommitDirty && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PagesDeploymentCreateDeploymentRequestCommitDirty($value)'; } 
 }
final class PagesDeploymentCreateDeploymentRequest {const PagesDeploymentCreateDeploymentRequest({this.headers, this.redirects, this.routesJson, this.workerBundle, this.workerJs, this.branch, this.commitDirty, this.commitHash, this.commitMessage, this.functionsFilepathRoutingConfigJson, this.manifest, this.pagesBuildOutputDir, this.wranglerConfigHash, });

factory PagesDeploymentCreateDeploymentRequest.fromJson(Map<String, dynamic> json) { return PagesDeploymentCreateDeploymentRequest(
  headers: json['_headers'] != null ? base64Decode(json['_headers'] as String) : null,
  redirects: json['_redirects'] != null ? base64Decode(json['_redirects'] as String) : null,
  routesJson: json['_routes.json'] != null ? base64Decode(json['_routes.json'] as String) : null,
  workerBundle: json['_worker.bundle'] != null ? base64Decode(json['_worker.bundle'] as String) : null,
  workerJs: json['_worker.js'] != null ? base64Decode(json['_worker.js'] as String) : null,
  branch: json['branch'] as String?,
  commitDirty: json['commit_dirty'] != null ? PagesDeploymentCreateDeploymentRequestCommitDirty.fromJson(json['commit_dirty'] as String) : null,
  commitHash: json['commit_hash'] as String?,
  commitMessage: json['commit_message'] as String?,
  functionsFilepathRoutingConfigJson: json['functions-filepath-routing-config.json'] != null ? base64Decode(json['functions-filepath-routing-config.json'] as String) : null,
  manifest: json['manifest'] as String?,
  pagesBuildOutputDir: json['pages_build_output_dir'] as String?,
  wranglerConfigHash: json['wrangler_config_hash'] as String?,
); }

/// Headers configuration file for the deployment.
final Uint8List? headers;

/// Redirects configuration file for the deployment.
final Uint8List? redirects;

/// Routes configuration file defining routing rules.
final Uint8List? routesJson;

/// Worker bundle file in multipart/form-data format. Mutually exclusive with `_worker.js`.
/// Cannot specify both `_worker.js` and `_worker.bundle` in the same request.
/// Maximum size: 25 MiB.
/// 
final Uint8List? workerBundle;

/// Worker JavaScript file. Mutually exclusive with `_worker.bundle`.
/// Cannot specify both `_worker.js` and `_worker.bundle` in the same request.
/// 
final Uint8List? workerJs;

/// The branch to build the new deployment from. The `HEAD` of the branch will be used. If omitted, the production branch will be used by default.
final String? branch;

/// Boolean string indicating if the working directory has uncommitted changes.
final PagesDeploymentCreateDeploymentRequestCommitDirty? commitDirty;

/// Git commit SHA associated with this deployment.
final String? commitHash;

/// Git commit message associated with this deployment.
final String? commitMessage;

/// Functions routing configuration file.
final Uint8List? functionsFilepathRoutingConfigJson;

/// JSON string containing a manifest of files to deploy. Maps file paths to their content hashes.
/// Required for direct upload deployments. Maximum 20,000 entries.
/// 
final String? manifest;

/// The build output directory path.
final String? pagesBuildOutputDir;

/// Hash of the Wrangler configuration file used for this deployment.
final String? wranglerConfigHash;

Map<String, dynamic> toJson() { return {
  '_headers': ?headers,
  '_redirects': ?redirects,
  '_routes.json': ?routesJson,
  '_worker.bundle': ?workerBundle,
  '_worker.js': ?workerJs,
  'branch': ?branch,
  if (commitDirty != null) 'commit_dirty': commitDirty?.toJson(),
  'commit_hash': ?commitHash,
  'commit_message': ?commitMessage,
  'functions-filepath-routing-config.json': ?functionsFilepathRoutingConfigJson,
  'manifest': ?manifest,
  'pages_build_output_dir': ?pagesBuildOutputDir,
  'wrangler_config_hash': ?wranglerConfigHash,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'_headers', '_redirects', '_routes.json', '_worker.bundle', '_worker.js', 'branch', 'commit_dirty', 'commit_hash', 'commit_message', 'functions-filepath-routing-config.json', 'manifest', 'pages_build_output_dir', 'wrangler_config_hash'}.contains(key)); } 
PagesDeploymentCreateDeploymentRequest copyWith({Uint8List Function()? headers, Uint8List Function()? redirects, Uint8List Function()? routesJson, Uint8List Function()? workerBundle, Uint8List Function()? workerJs, String Function()? branch, PagesDeploymentCreateDeploymentRequestCommitDirty Function()? commitDirty, String Function()? commitHash, String Function()? commitMessage, Uint8List Function()? functionsFilepathRoutingConfigJson, String Function()? manifest, String Function()? pagesBuildOutputDir, String Function()? wranglerConfigHash, }) { return PagesDeploymentCreateDeploymentRequest(
  headers: headers != null ? headers() : this.headers,
  redirects: redirects != null ? redirects() : this.redirects,
  routesJson: routesJson != null ? routesJson() : this.routesJson,
  workerBundle: workerBundle != null ? workerBundle() : this.workerBundle,
  workerJs: workerJs != null ? workerJs() : this.workerJs,
  branch: branch != null ? branch() : this.branch,
  commitDirty: commitDirty != null ? commitDirty() : this.commitDirty,
  commitHash: commitHash != null ? commitHash() : this.commitHash,
  commitMessage: commitMessage != null ? commitMessage() : this.commitMessage,
  functionsFilepathRoutingConfigJson: functionsFilepathRoutingConfigJson != null ? functionsFilepathRoutingConfigJson() : this.functionsFilepathRoutingConfigJson,
  manifest: manifest != null ? manifest() : this.manifest,
  pagesBuildOutputDir: pagesBuildOutputDir != null ? pagesBuildOutputDir() : this.pagesBuildOutputDir,
  wranglerConfigHash: wranglerConfigHash != null ? wranglerConfigHash() : this.wranglerConfigHash,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentCreateDeploymentRequest &&
          headers == other.headers &&
          redirects == other.redirects &&
          routesJson == other.routesJson &&
          workerBundle == other.workerBundle &&
          workerJs == other.workerJs &&
          branch == other.branch &&
          commitDirty == other.commitDirty &&
          commitHash == other.commitHash &&
          commitMessage == other.commitMessage &&
          functionsFilepathRoutingConfigJson == other.functionsFilepathRoutingConfigJson &&
          manifest == other.manifest &&
          pagesBuildOutputDir == other.pagesBuildOutputDir &&
          wranglerConfigHash == other.wranglerConfigHash; } 
@override int get hashCode { return Object.hash(headers, redirects, routesJson, workerBundle, workerJs, branch, commitDirty, commitHash, commitMessage, functionsFilepathRoutingConfigJson, manifest, pagesBuildOutputDir, wranglerConfigHash); } 
@override String toString() { return 'PagesDeploymentCreateDeploymentRequest(headers: $headers, redirects: $redirects, routesJson: $routesJson, workerBundle: $workerBundle, workerJs: $workerJs, branch: $branch, commitDirty: $commitDirty, commitHash: $commitHash, commitMessage: $commitMessage, functionsFilepathRoutingConfigJson: $functionsFilepathRoutingConfigJson, manifest: $manifest, pagesBuildOutputDir: $pagesBuildOutputDir, wranglerConfigHash: $wranglerConfigHash)'; } 
 }
