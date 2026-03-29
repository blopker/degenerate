// GENERATED CODE - DO NOT MODIFY BY HAND

/// Subdomain settings for the Worker.
final class WorkersWorkerSubdomain {const WorkersWorkerSubdomain({this.enabled = false, this.previewsEnabled, });

factory WorkersWorkerSubdomain.fromJson(Map<String, dynamic> json) { return WorkersWorkerSubdomain(
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : false,
  previewsEnabled: json['previews_enabled'] as bool?,
); }

/// Whether the *.workers.dev subdomain is enabled for the Worker.
final bool enabled;

/// Whether [preview URLs](https://developers.cloudflare.com/workers/configuration/previews/) are enabled for the Worker.
final bool? previewsEnabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'previews_enabled': ?previewsEnabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WorkersWorkerSubdomain copyWith({bool Function()? enabled, bool Function()? previewsEnabled, }) { return WorkersWorkerSubdomain(
  enabled: enabled != null ? enabled() : this.enabled,
  previewsEnabled: previewsEnabled != null ? previewsEnabled() : this.previewsEnabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersWorkerSubdomain &&
          enabled == other.enabled &&
          previewsEnabled == other.previewsEnabled; } 
@override int get hashCode { return Object.hash(enabled, previewsEnabled); } 
@override String toString() { return 'WorkersWorkerSubdomain(enabled: $enabled, previewsEnabled: $previewsEnabled)'; } 
 }
