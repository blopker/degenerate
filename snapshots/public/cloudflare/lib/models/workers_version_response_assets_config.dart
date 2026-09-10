// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_version_response_assets_config_run_worker_first.dart';/// Determines the redirects and rewrites of requests for HTML content.
@immutable final class WorkersVersionResponseAssetsConfigHtmlHandling {const WorkersVersionResponseAssetsConfigHtmlHandling._(this.value);

factory WorkersVersionResponseAssetsConfigHtmlHandling.fromJson(String json) { return switch (json) {
  'auto-trailing-slash' => autoTrailingSlash,
  'force-trailing-slash' => forceTrailingSlash,
  'drop-trailing-slash' => dropTrailingSlash,
  'none' => none,
  _ => WorkersVersionResponseAssetsConfigHtmlHandling._(json),
}; }

static const WorkersVersionResponseAssetsConfigHtmlHandling autoTrailingSlash = WorkersVersionResponseAssetsConfigHtmlHandling._('auto-trailing-slash');

static const WorkersVersionResponseAssetsConfigHtmlHandling forceTrailingSlash = WorkersVersionResponseAssetsConfigHtmlHandling._('force-trailing-slash');

static const WorkersVersionResponseAssetsConfigHtmlHandling dropTrailingSlash = WorkersVersionResponseAssetsConfigHtmlHandling._('drop-trailing-slash');

static const WorkersVersionResponseAssetsConfigHtmlHandling none = WorkersVersionResponseAssetsConfigHtmlHandling._('none');

static const List<WorkersVersionResponseAssetsConfigHtmlHandling> values = [autoTrailingSlash, forceTrailingSlash, dropTrailingSlash, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersVersionResponseAssetsConfigHtmlHandling && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersVersionResponseAssetsConfigHtmlHandling($value)'; } 
 }
/// Determines the response when a request does not match a static asset, and there is no Worker script.
@immutable final class WorkersVersionResponseAssetsConfigNotFoundHandling {const WorkersVersionResponseAssetsConfigNotFoundHandling._(this.value);

factory WorkersVersionResponseAssetsConfigNotFoundHandling.fromJson(String json) { return switch (json) {
  'none' => none,
  '404-page' => $404Page,
  'single-page-application' => singlePageApplication,
  _ => WorkersVersionResponseAssetsConfigNotFoundHandling._(json),
}; }

static const WorkersVersionResponseAssetsConfigNotFoundHandling none = WorkersVersionResponseAssetsConfigNotFoundHandling._('none');

static const WorkersVersionResponseAssetsConfigNotFoundHandling $404Page = WorkersVersionResponseAssetsConfigNotFoundHandling._('404-page');

static const WorkersVersionResponseAssetsConfigNotFoundHandling singlePageApplication = WorkersVersionResponseAssetsConfigNotFoundHandling._('single-page-application');

static const List<WorkersVersionResponseAssetsConfigNotFoundHandling> values = [none, $404Page, singlePageApplication];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersVersionResponseAssetsConfigNotFoundHandling && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersVersionResponseAssetsConfigNotFoundHandling($value)'; } 
 }
/// Configuration for assets within a Worker.
@immutable final class WorkersVersionResponseAssetsConfig {const WorkersVersionResponseAssetsConfig({this.htmlHandling, this.notFoundHandling, this.runWorkerFirst, });

factory WorkersVersionResponseAssetsConfig.fromJson(Map<String, dynamic> json) { return WorkersVersionResponseAssetsConfig(
  htmlHandling: json['html_handling'] != null ? WorkersVersionResponseAssetsConfigHtmlHandling.fromJson(json['html_handling'] as String) : null,
  notFoundHandling: json['not_found_handling'] != null ? WorkersVersionResponseAssetsConfigNotFoundHandling.fromJson(json['not_found_handling'] as String) : null,
  runWorkerFirst: json['run_worker_first'] != null ? OneOf2.parse(json['run_worker_first'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => v as bool,) : null,
); }

/// Determines the redirects and rewrites of requests for HTML content.
final WorkersVersionResponseAssetsConfigHtmlHandling? htmlHandling;

/// Determines the response when a request does not match a static asset, and there is no Worker script.
final WorkersVersionResponseAssetsConfigNotFoundHandling? notFoundHandling;

final WorkersVersionResponseAssetsConfigRunWorkerFirst? runWorkerFirst;

/// The value with the schema default applied when absent.
WorkersVersionResponseAssetsConfigHtmlHandling get htmlHandlingOrDefault { return htmlHandling ?? WorkersVersionResponseAssetsConfigHtmlHandling.fromJson('auto-trailing-slash'); } 
/// The value with the schema default applied when absent.
WorkersVersionResponseAssetsConfigNotFoundHandling get notFoundHandlingOrDefault { return notFoundHandling ?? WorkersVersionResponseAssetsConfigNotFoundHandling.fromJson('none'); } 
Map<String, dynamic> toJson() { return {
  if (htmlHandling != null) 'html_handling': htmlHandling?.toJson(),
  if (notFoundHandling != null) 'not_found_handling': notFoundHandling?.toJson(),
  if (runWorkerFirst != null) 'run_worker_first': runWorkerFirst?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'html_handling', 'not_found_handling', 'run_worker_first'}.contains(key)); } 
WorkersVersionResponseAssetsConfig copyWith({WorkersVersionResponseAssetsConfigHtmlHandling? Function()? htmlHandling, WorkersVersionResponseAssetsConfigNotFoundHandling? Function()? notFoundHandling, WorkersVersionResponseAssetsConfigRunWorkerFirst? Function()? runWorkerFirst, }) { return WorkersVersionResponseAssetsConfig(
  htmlHandling: htmlHandling != null ? htmlHandling() : this.htmlHandling,
  notFoundHandling: notFoundHandling != null ? notFoundHandling() : this.notFoundHandling,
  runWorkerFirst: runWorkerFirst != null ? runWorkerFirst() : this.runWorkerFirst,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionResponseAssetsConfig &&
          htmlHandling == other.htmlHandling &&
          notFoundHandling == other.notFoundHandling &&
          runWorkerFirst == other.runWorkerFirst; } 
@override int get hashCode { return Object.hash(htmlHandling, notFoundHandling, runWorkerFirst); } 
@override String toString() { return 'WorkersVersionResponseAssetsConfig(htmlHandling: $htmlHandling, notFoundHandling: $notFoundHandling, runWorkerFirst: $runWorkerFirst)'; } 
 }
