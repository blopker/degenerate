// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_workers_pipelines_binding_source.dart';import 'cloudflare_pipelines_workers_pipelines_http_source.dart';sealed class AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource.fromJson(Map<String, dynamic> json) {return switch (json['type']) {
  'cloudflare-pipelines_workers_pipelines_http_source' => AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesHttpSource.fromJson(json),
  'cloudflare-pipelines_workers_pipelines_binding_source' => AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesBindingSource.fromJson(json),
  'binding' => AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceBinding.fromJson(json),
  'http' => AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceHttp.fromJson(json),
  _ => AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource$Unknown(json),
};}

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return this is AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource$Unknown;}
}
@immutable final class AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesHttpSource extends AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesHttpSource(this.cloudflarePipelinesWorkersPipelinesHttpSource);

factory AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesHttpSource.fromJson(Map<String, dynamic> json) {return AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesHttpSource(CloudflarePipelinesWorkersPipelinesHttpSource.fromJson(json));}

final CloudflarePipelinesWorkersPipelinesHttpSource cloudflarePipelinesWorkersPipelinesHttpSource;

@override String get type {return 'cloudflare-pipelines_workers_pipelines_http_source';}
@override Map<String, dynamic> toJson() {return {...cloudflarePipelinesWorkersPipelinesHttpSource.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesHttpSource && cloudflarePipelinesWorkersPipelinesHttpSource == other.cloudflarePipelinesWorkersPipelinesHttpSource;}
@override int get hashCode {return cloudflarePipelinesWorkersPipelinesHttpSource.hashCode;}
@override String toString() {return 'AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesHttpSource(cloudflarePipelinesWorkersPipelinesHttpSource: $cloudflarePipelinesWorkersPipelinesHttpSource)';}
}
@immutable final class AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesBindingSource extends AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesBindingSource(this.cloudflarePipelinesWorkersPipelinesBindingSource);

factory AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesBindingSource.fromJson(Map<String, dynamic> json) {return AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesBindingSource(CloudflarePipelinesWorkersPipelinesBindingSource.fromJson(json));}

final CloudflarePipelinesWorkersPipelinesBindingSource cloudflarePipelinesWorkersPipelinesBindingSource;

@override String get type {return 'cloudflare-pipelines_workers_pipelines_binding_source';}
@override Map<String, dynamic> toJson() {return {...cloudflarePipelinesWorkersPipelinesBindingSource.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesBindingSource && cloudflarePipelinesWorkersPipelinesBindingSource == other.cloudflarePipelinesWorkersPipelinesBindingSource;}
@override int get hashCode {return cloudflarePipelinesWorkersPipelinesBindingSource.hashCode;}
@override String toString() {return 'AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceCloudflarePipelinesWorkersPipelinesBindingSource(cloudflarePipelinesWorkersPipelinesBindingSource: $cloudflarePipelinesWorkersPipelinesBindingSource)';}
}
@immutable final class AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceBinding extends AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceBinding(this.cloudflarePipelinesWorkersPipelinesBindingSource);

factory AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceBinding.fromJson(Map<String, dynamic> json) {return AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceBinding(CloudflarePipelinesWorkersPipelinesBindingSource.fromJson(json));}

final CloudflarePipelinesWorkersPipelinesBindingSource cloudflarePipelinesWorkersPipelinesBindingSource;

@override String get type {return 'binding';}
@override Map<String, dynamic> toJson() {return {...cloudflarePipelinesWorkersPipelinesBindingSource.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceBinding && cloudflarePipelinesWorkersPipelinesBindingSource == other.cloudflarePipelinesWorkersPipelinesBindingSource;}
@override int get hashCode {return cloudflarePipelinesWorkersPipelinesBindingSource.hashCode;}
@override String toString() {return 'AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceBinding(cloudflarePipelinesWorkersPipelinesBindingSource: $cloudflarePipelinesWorkersPipelinesBindingSource)';}
}
@immutable final class AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceHttp extends AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceHttp(this.cloudflarePipelinesWorkersPipelinesHttpSource);

factory AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceHttp.fromJson(Map<String, dynamic> json) {return AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceHttp(CloudflarePipelinesWorkersPipelinesHttpSource.fromJson(json));}

final CloudflarePipelinesWorkersPipelinesHttpSource cloudflarePipelinesWorkersPipelinesHttpSource;

@override String get type {return 'http';}
@override Map<String, dynamic> toJson() {return {...cloudflarePipelinesWorkersPipelinesHttpSource.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceHttp && cloudflarePipelinesWorkersPipelinesHttpSource == other.cloudflarePipelinesWorkersPipelinesHttpSource;}
@override int get hashCode {return cloudflarePipelinesWorkersPipelinesHttpSource.hashCode;}
@override String toString() {return 'AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSourceHttp(cloudflarePipelinesWorkersPipelinesHttpSource: $cloudflarePipelinesWorkersPipelinesHttpSource)';}
}
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource$Unknown extends AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type {return json['type'] as String? ?? '';}
@override Map<String, dynamic> toJson() {return json;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource$Unknown && json == other.json;}
@override int get hashCode {return json.hashCode;}
@override String toString() {return 'AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource.unknown($json)';}
}
