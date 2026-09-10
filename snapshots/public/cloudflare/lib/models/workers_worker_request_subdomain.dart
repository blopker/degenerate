// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Subdomain settings for the Worker.
@immutable final class WorkersWorkerRequestSubdomain {const WorkersWorkerRequestSubdomain({this.enabled, this.previewsEnabled, });

factory WorkersWorkerRequestSubdomain.fromJson(Map<String, dynamic> json) {return WorkersWorkerRequestSubdomain(
  enabled: json['enabled'] as bool?,
  previewsEnabled: json['previews_enabled'] as bool?,
);}

/// Whether the *.workers.dev subdomain is enabled for the Worker.
final bool? enabled;

/// Whether [preview URLs](https://developers.cloudflare.com/workers/configuration/previews/) are enabled for the Worker.
final bool? previewsEnabled;

/// The value with the schema default applied when absent.
bool get enabledOrDefault {return enabled ?? false;}
Map<String, dynamic> toJson() {return {
  'enabled': ?enabled,
  'previews_enabled': ?previewsEnabled,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'enabled', 'previews_enabled'}.contains(key));}
WorkersWorkerRequestSubdomain copyWith({bool? Function()? enabled, bool? Function()? previewsEnabled, }) {return WorkersWorkerRequestSubdomain(
  enabled: enabled != null ? enabled() : this.enabled,
  previewsEnabled: previewsEnabled != null ? previewsEnabled() : this.previewsEnabled,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersWorkerRequestSubdomain &&
          enabled == other.enabled &&
          previewsEnabled == other.previewsEnabled;}
@override int get hashCode {return Object.hash(enabled, previewsEnabled);}
@override String toString() {return 'WorkersWorkerRequestSubdomain(enabled: $enabled, previewsEnabled: $previewsEnabled)';}
}
