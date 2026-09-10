// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_version_request_assets_config_run_worker_first.dart';/// Determines the redirects and rewrites of requests for HTML content.
@immutable final class WorkersVersionRequestAssetsConfigHtmlHandling {const WorkersVersionRequestAssetsConfigHtmlHandling._(this.value);

factory WorkersVersionRequestAssetsConfigHtmlHandling.fromJson(String json) {return switch (json) {
  'auto-trailing-slash' => autoTrailingSlash,
  'force-trailing-slash' => forceTrailingSlash,
  'drop-trailing-slash' => dropTrailingSlash,
  'none' => none,
  _ => WorkersVersionRequestAssetsConfigHtmlHandling._(json),
};}

static const WorkersVersionRequestAssetsConfigHtmlHandling autoTrailingSlash = WorkersVersionRequestAssetsConfigHtmlHandling._('auto-trailing-slash');

static const WorkersVersionRequestAssetsConfigHtmlHandling forceTrailingSlash = WorkersVersionRequestAssetsConfigHtmlHandling._('force-trailing-slash');

static const WorkersVersionRequestAssetsConfigHtmlHandling dropTrailingSlash = WorkersVersionRequestAssetsConfigHtmlHandling._('drop-trailing-slash');

static const WorkersVersionRequestAssetsConfigHtmlHandling none = WorkersVersionRequestAssetsConfigHtmlHandling._('none');

static const List<WorkersVersionRequestAssetsConfigHtmlHandling> values = [autoTrailingSlash, forceTrailingSlash, dropTrailingSlash, none];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersVersionRequestAssetsConfigHtmlHandling && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'WorkersVersionRequestAssetsConfigHtmlHandling($value)';}
}
/// Determines the response when a request does not match a static asset, and there is no Worker script.
@immutable final class WorkersVersionRequestAssetsConfigNotFoundHandling {const WorkersVersionRequestAssetsConfigNotFoundHandling._(this.value);

factory WorkersVersionRequestAssetsConfigNotFoundHandling.fromJson(String json) {return switch (json) {
  'none' => none,
  '404-page' => $404Page,
  'single-page-application' => singlePageApplication,
  _ => WorkersVersionRequestAssetsConfigNotFoundHandling._(json),
};}

static const WorkersVersionRequestAssetsConfigNotFoundHandling none = WorkersVersionRequestAssetsConfigNotFoundHandling._('none');

static const WorkersVersionRequestAssetsConfigNotFoundHandling $404Page = WorkersVersionRequestAssetsConfigNotFoundHandling._('404-page');

static const WorkersVersionRequestAssetsConfigNotFoundHandling singlePageApplication = WorkersVersionRequestAssetsConfigNotFoundHandling._('single-page-application');

static const List<WorkersVersionRequestAssetsConfigNotFoundHandling> values = [none, $404Page, singlePageApplication];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersVersionRequestAssetsConfigNotFoundHandling && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'WorkersVersionRequestAssetsConfigNotFoundHandling($value)';}
}
/// Configuration for assets within a Worker.
@immutable final class WorkersVersionRequestAssetsConfig {const WorkersVersionRequestAssetsConfig({this.htmlHandling, this.notFoundHandling, this.runWorkerFirst, });

factory WorkersVersionRequestAssetsConfig.fromJson(Map<String, dynamic> json) {return WorkersVersionRequestAssetsConfig(
  htmlHandling: json['html_handling'] != null ? WorkersVersionRequestAssetsConfigHtmlHandling.fromJson(json['html_handling'] as String) : null,
  notFoundHandling: json['not_found_handling'] != null ? WorkersVersionRequestAssetsConfigNotFoundHandling.fromJson(json['not_found_handling'] as String) : null,
  runWorkerFirst: json['run_worker_first'] != null ? OneOf2.parse(json['run_worker_first'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => v as bool,) : null,
);}

/// Determines the redirects and rewrites of requests for HTML content.
final WorkersVersionRequestAssetsConfigHtmlHandling? htmlHandling;

/// Determines the response when a request does not match a static asset, and there is no Worker script.
final WorkersVersionRequestAssetsConfigNotFoundHandling? notFoundHandling;

final WorkersVersionRequestAssetsConfigRunWorkerFirst? runWorkerFirst;

/// The value with the schema default applied when absent.
WorkersVersionRequestAssetsConfigHtmlHandling get htmlHandlingOrDefault {return htmlHandling ?? WorkersVersionRequestAssetsConfigHtmlHandling.fromJson('auto-trailing-slash');}
/// The value with the schema default applied when absent.
WorkersVersionRequestAssetsConfigNotFoundHandling get notFoundHandlingOrDefault {return notFoundHandling ?? WorkersVersionRequestAssetsConfigNotFoundHandling.fromJson('none');}
Map<String, dynamic> toJson() {return {
  if (htmlHandling != null) 'html_handling': htmlHandling?.toJson(),
  if (notFoundHandling != null) 'not_found_handling': notFoundHandling?.toJson(),
  if (runWorkerFirst != null) 'run_worker_first': runWorkerFirst?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'html_handling', 'not_found_handling', 'run_worker_first'}.contains(key));}
WorkersVersionRequestAssetsConfig copyWith({WorkersVersionRequestAssetsConfigHtmlHandling? Function()? htmlHandling, WorkersVersionRequestAssetsConfigNotFoundHandling? Function()? notFoundHandling, WorkersVersionRequestAssetsConfigRunWorkerFirst? Function()? runWorkerFirst, }) {return WorkersVersionRequestAssetsConfig(
  htmlHandling: htmlHandling != null ? htmlHandling() : this.htmlHandling,
  notFoundHandling: notFoundHandling != null ? notFoundHandling() : this.notFoundHandling,
  runWorkerFirst: runWorkerFirst != null ? runWorkerFirst() : this.runWorkerFirst,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersVersionRequestAssetsConfig &&
          htmlHandling == other.htmlHandling &&
          notFoundHandling == other.notFoundHandling &&
          runWorkerFirst == other.runWorkerFirst;}
@override int get hashCode {return Object.hash(htmlHandling, notFoundHandling, runWorkerFirst);}
@override String toString() {return 'WorkersVersionRequestAssetsConfig(htmlHandling: $htmlHandling, notFoundHandling: $notFoundHandling, runWorkerFirst: $runWorkerFirst)';}
}
