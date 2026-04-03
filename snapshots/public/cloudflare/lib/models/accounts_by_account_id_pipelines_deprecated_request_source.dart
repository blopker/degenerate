// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_workers_pipelines_binding_source.dart';import 'cloudflare_pipelines_workers_pipelines_http_source.dart';sealed class AccountsByAccountIdPipelinesDeprecatedRequestSource {const AccountsByAccountIdPipelinesDeprecatedRequestSource();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory AccountsByAccountIdPipelinesDeprecatedRequestSource.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'binding' => AccountsByAccountIdPipelinesDeprecatedRequestSourceBinding.fromJson(json),
  'http' => AccountsByAccountIdPipelinesDeprecatedRequestSourceHttp.fromJson(json),
  _ => AccountsByAccountIdPipelinesDeprecatedRequestSource$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is AccountsByAccountIdPipelinesDeprecatedRequestSource$Unknown; } 
 }
@immutable final class AccountsByAccountIdPipelinesDeprecatedRequestSourceBinding extends AccountsByAccountIdPipelinesDeprecatedRequestSource {const AccountsByAccountIdPipelinesDeprecatedRequestSourceBinding(this.cloudflarePipelinesWorkersPipelinesBindingSource);

factory AccountsByAccountIdPipelinesDeprecatedRequestSourceBinding.fromJson(Map<String, dynamic> json) { return AccountsByAccountIdPipelinesDeprecatedRequestSourceBinding(CloudflarePipelinesWorkersPipelinesBindingSource.fromJson(json)); }

final CloudflarePipelinesWorkersPipelinesBindingSource cloudflarePipelinesWorkersPipelinesBindingSource;

@override String get type { return 'binding'; } 
@override Map<String, dynamic> toJson() { return {...cloudflarePipelinesWorkersPipelinesBindingSource.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountsByAccountIdPipelinesDeprecatedRequestSourceBinding && cloudflarePipelinesWorkersPipelinesBindingSource == other.cloudflarePipelinesWorkersPipelinesBindingSource; } 
@override int get hashCode { return cloudflarePipelinesWorkersPipelinesBindingSource.hashCode; } 
@override String toString() { return 'AccountsByAccountIdPipelinesDeprecatedRequestSourceBinding(cloudflarePipelinesWorkersPipelinesBindingSource: $cloudflarePipelinesWorkersPipelinesBindingSource)'; } 
 }
@immutable final class AccountsByAccountIdPipelinesDeprecatedRequestSourceHttp extends AccountsByAccountIdPipelinesDeprecatedRequestSource {const AccountsByAccountIdPipelinesDeprecatedRequestSourceHttp(this.cloudflarePipelinesWorkersPipelinesHttpSource);

factory AccountsByAccountIdPipelinesDeprecatedRequestSourceHttp.fromJson(Map<String, dynamic> json) { return AccountsByAccountIdPipelinesDeprecatedRequestSourceHttp(CloudflarePipelinesWorkersPipelinesHttpSource.fromJson(json)); }

final CloudflarePipelinesWorkersPipelinesHttpSource cloudflarePipelinesWorkersPipelinesHttpSource;

@override String get type { return 'http'; } 
@override Map<String, dynamic> toJson() { return {...cloudflarePipelinesWorkersPipelinesHttpSource.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountsByAccountIdPipelinesDeprecatedRequestSourceHttp && cloudflarePipelinesWorkersPipelinesHttpSource == other.cloudflarePipelinesWorkersPipelinesHttpSource; } 
@override int get hashCode { return cloudflarePipelinesWorkersPipelinesHttpSource.hashCode; } 
@override String toString() { return 'AccountsByAccountIdPipelinesDeprecatedRequestSourceHttp(cloudflarePipelinesWorkersPipelinesHttpSource: $cloudflarePipelinesWorkersPipelinesHttpSource)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class AccountsByAccountIdPipelinesDeprecatedRequestSource$Unknown extends AccountsByAccountIdPipelinesDeprecatedRequestSource {const AccountsByAccountIdPipelinesDeprecatedRequestSource$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountsByAccountIdPipelinesDeprecatedRequestSource$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'AccountsByAccountIdPipelinesDeprecatedRequestSource.unknown($json)'; } 
 }
