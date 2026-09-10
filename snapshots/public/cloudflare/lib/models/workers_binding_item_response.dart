// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_binding_kind_ai.dart';import 'workers_binding_kind_analytics_engine.dart';import 'workers_binding_kind_assets.dart';import 'workers_binding_kind_browser.dart';import 'workers_binding_kind_d1.dart';import 'workers_binding_kind_data_blob.dart';import 'workers_binding_kind_dispatch_namespace.dart';import 'workers_binding_kind_durable_object_namespace.dart';import 'workers_binding_kind_hyperdrive.dart';import 'workers_binding_kind_images.dart';import 'workers_binding_kind_inherit.dart';import 'workers_binding_kind_json.dart';import 'workers_binding_kind_kv_namespace.dart';import 'workers_binding_kind_mtls_certificate.dart';import 'workers_binding_kind_pipelines.dart';import 'workers_binding_kind_plain_text.dart';import 'workers_binding_kind_queue.dart';import 'workers_binding_kind_r2_bucket.dart';import 'workers_binding_kind_ratelimit.dart';import 'workers_binding_kind_secret_key_response.dart';import 'workers_binding_kind_secret_text_response.dart';import 'workers_binding_kind_secrets_store_secret.dart';import 'workers_binding_kind_send_email.dart';import 'workers_binding_kind_service.dart';import 'workers_binding_kind_text_blob.dart';import 'workers_binding_kind_vectorize.dart';import 'workers_binding_kind_version_metadata.dart';import 'workers_binding_kind_vpc_service.dart';import 'workers_binding_kind_wasm_module.dart';import 'workers_binding_kind_workflow.dart';/// A binding to allow the Worker to communicate with resources.
sealed class WorkersBindingItemResponse {const WorkersBindingItemResponse();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory WorkersBindingItemResponse.fromJson(Map<String, dynamic> json) {return switch (json['type']) {
  'ai' => WorkersBindingItemResponseAi.fromJson(json),
  'analytics_engine' => WorkersBindingItemResponseAnalyticsEngine.fromJson(json),
  'assets' => WorkersBindingItemResponseAssets.fromJson(json),
  'browser' => WorkersBindingItemResponseBrowser.fromJson(json),
  'd1' => WorkersBindingItemResponseD1.fromJson(json),
  'data_blob' => WorkersBindingItemResponseDataBlob.fromJson(json),
  'dispatch_namespace' => WorkersBindingItemResponseDispatchNamespace.fromJson(json),
  'durable_object_namespace' => WorkersBindingItemResponseDurableObjectNamespace.fromJson(json),
  'hyperdrive' => WorkersBindingItemResponseHyperdrive.fromJson(json),
  'inherit' => WorkersBindingItemResponseInherit.fromJson(json),
  'images' => WorkersBindingItemResponseImages.fromJson(json),
  'json' => WorkersBindingItemResponseJson.fromJson(json),
  'kv_namespace' => WorkersBindingItemResponseKvNamespace.fromJson(json),
  'mtls_certificate' => WorkersBindingItemResponseMtlsCertificate.fromJson(json),
  'plain_text' => WorkersBindingItemResponsePlainText.fromJson(json),
  'pipelines' => WorkersBindingItemResponsePipelines.fromJson(json),
  'queue' => WorkersBindingItemResponseQueue.fromJson(json),
  'ratelimit' => WorkersBindingItemResponseRatelimit.fromJson(json),
  'r2_bucket' => WorkersBindingItemResponseR2Bucket.fromJson(json),
  'secret_text' => WorkersBindingItemResponseSecretText.fromJson(json),
  'send_email' => WorkersBindingItemResponseSendEmail.fromJson(json),
  'service' => WorkersBindingItemResponseService.fromJson(json),
  'text_blob' => WorkersBindingItemResponseTextBlob.fromJson(json),
  'vectorize' => WorkersBindingItemResponseVectorize.fromJson(json),
  'version_metadata' => WorkersBindingItemResponseVersionMetadata.fromJson(json),
  'secrets_store_secret' => WorkersBindingItemResponseSecretsStoreSecret.fromJson(json),
  'secret_key' => WorkersBindingItemResponseSecretKey.fromJson(json),
  'workflow' => WorkersBindingItemResponseWorkflow.fromJson(json),
  'wasm_module' => WorkersBindingItemResponseWasmModule.fromJson(json),
  'vpc_service' => WorkersBindingItemResponseVpcService.fromJson(json),
  _ => WorkersBindingItemResponse$Unknown(json),
};}

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return this is WorkersBindingItemResponse$Unknown;}
}
@immutable final class WorkersBindingItemResponseAi extends WorkersBindingItemResponse {const WorkersBindingItemResponseAi(this.workersBindingKindAi);

factory WorkersBindingItemResponseAi.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseAi(WorkersBindingKindAi.fromJson(json));}

final WorkersBindingKindAi workersBindingKindAi;

@override String get type {return 'ai';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindAi.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseAi && workersBindingKindAi == other.workersBindingKindAi;}
@override int get hashCode {return workersBindingKindAi.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseAi(workersBindingKindAi: $workersBindingKindAi)';}
}
@immutable final class WorkersBindingItemResponseAnalyticsEngine extends WorkersBindingItemResponse {const WorkersBindingItemResponseAnalyticsEngine(this.workersBindingKindAnalyticsEngine);

factory WorkersBindingItemResponseAnalyticsEngine.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseAnalyticsEngine(WorkersBindingKindAnalyticsEngine.fromJson(json));}

final WorkersBindingKindAnalyticsEngine workersBindingKindAnalyticsEngine;

@override String get type {return 'analytics_engine';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindAnalyticsEngine.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseAnalyticsEngine && workersBindingKindAnalyticsEngine == other.workersBindingKindAnalyticsEngine;}
@override int get hashCode {return workersBindingKindAnalyticsEngine.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseAnalyticsEngine(workersBindingKindAnalyticsEngine: $workersBindingKindAnalyticsEngine)';}
}
@immutable final class WorkersBindingItemResponseAssets extends WorkersBindingItemResponse {const WorkersBindingItemResponseAssets(this.workersBindingKindAssets);

factory WorkersBindingItemResponseAssets.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseAssets(WorkersBindingKindAssets.fromJson(json));}

final WorkersBindingKindAssets workersBindingKindAssets;

@override String get type {return 'assets';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindAssets.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseAssets && workersBindingKindAssets == other.workersBindingKindAssets;}
@override int get hashCode {return workersBindingKindAssets.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseAssets(workersBindingKindAssets: $workersBindingKindAssets)';}
}
@immutable final class WorkersBindingItemResponseBrowser extends WorkersBindingItemResponse {const WorkersBindingItemResponseBrowser(this.workersBindingKindBrowser);

factory WorkersBindingItemResponseBrowser.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseBrowser(WorkersBindingKindBrowser.fromJson(json));}

final WorkersBindingKindBrowser workersBindingKindBrowser;

@override String get type {return 'browser';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindBrowser.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseBrowser && workersBindingKindBrowser == other.workersBindingKindBrowser;}
@override int get hashCode {return workersBindingKindBrowser.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseBrowser(workersBindingKindBrowser: $workersBindingKindBrowser)';}
}
@immutable final class WorkersBindingItemResponseD1 extends WorkersBindingItemResponse {const WorkersBindingItemResponseD1(this.workersBindingKindD1);

factory WorkersBindingItemResponseD1.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseD1(WorkersBindingKindD1.fromJson(json));}

final WorkersBindingKindD1 workersBindingKindD1;

@override String get type {return 'd1';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindD1.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseD1 && workersBindingKindD1 == other.workersBindingKindD1;}
@override int get hashCode {return workersBindingKindD1.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseD1(workersBindingKindD1: $workersBindingKindD1)';}
}
@immutable final class WorkersBindingItemResponseDataBlob extends WorkersBindingItemResponse {const WorkersBindingItemResponseDataBlob(this.workersBindingKindDataBlob);

factory WorkersBindingItemResponseDataBlob.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseDataBlob(WorkersBindingKindDataBlob.fromJson(json));}

final WorkersBindingKindDataBlob workersBindingKindDataBlob;

@override String get type {return 'data_blob';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindDataBlob.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseDataBlob && workersBindingKindDataBlob == other.workersBindingKindDataBlob;}
@override int get hashCode {return workersBindingKindDataBlob.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseDataBlob(workersBindingKindDataBlob: $workersBindingKindDataBlob)';}
}
@immutable final class WorkersBindingItemResponseDispatchNamespace extends WorkersBindingItemResponse {const WorkersBindingItemResponseDispatchNamespace(this.workersBindingKindDispatchNamespace);

factory WorkersBindingItemResponseDispatchNamespace.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseDispatchNamespace(WorkersBindingKindDispatchNamespace.fromJson(json));}

final WorkersBindingKindDispatchNamespace workersBindingKindDispatchNamespace;

@override String get type {return 'dispatch_namespace';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindDispatchNamespace.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseDispatchNamespace && workersBindingKindDispatchNamespace == other.workersBindingKindDispatchNamespace;}
@override int get hashCode {return workersBindingKindDispatchNamespace.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseDispatchNamespace(workersBindingKindDispatchNamespace: $workersBindingKindDispatchNamespace)';}
}
@immutable final class WorkersBindingItemResponseDurableObjectNamespace extends WorkersBindingItemResponse {const WorkersBindingItemResponseDurableObjectNamespace(this.workersBindingKindDurableObjectNamespace);

factory WorkersBindingItemResponseDurableObjectNamespace.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseDurableObjectNamespace(WorkersBindingKindDurableObjectNamespace.fromJson(json));}

final WorkersBindingKindDurableObjectNamespace workersBindingKindDurableObjectNamespace;

@override String get type {return 'durable_object_namespace';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindDurableObjectNamespace.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseDurableObjectNamespace && workersBindingKindDurableObjectNamespace == other.workersBindingKindDurableObjectNamespace;}
@override int get hashCode {return workersBindingKindDurableObjectNamespace.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseDurableObjectNamespace(workersBindingKindDurableObjectNamespace: $workersBindingKindDurableObjectNamespace)';}
}
@immutable final class WorkersBindingItemResponseHyperdrive extends WorkersBindingItemResponse {const WorkersBindingItemResponseHyperdrive(this.workersBindingKindHyperdrive);

factory WorkersBindingItemResponseHyperdrive.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseHyperdrive(WorkersBindingKindHyperdrive.fromJson(json));}

final WorkersBindingKindHyperdrive workersBindingKindHyperdrive;

@override String get type {return 'hyperdrive';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindHyperdrive.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseHyperdrive && workersBindingKindHyperdrive == other.workersBindingKindHyperdrive;}
@override int get hashCode {return workersBindingKindHyperdrive.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseHyperdrive(workersBindingKindHyperdrive: $workersBindingKindHyperdrive)';}
}
@immutable final class WorkersBindingItemResponseInherit extends WorkersBindingItemResponse {const WorkersBindingItemResponseInherit(this.workersBindingKindInherit);

factory WorkersBindingItemResponseInherit.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseInherit(WorkersBindingKindInherit.fromJson(json));}

final WorkersBindingKindInherit workersBindingKindInherit;

@override String get type {return 'inherit';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindInherit.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseInherit && workersBindingKindInherit == other.workersBindingKindInherit;}
@override int get hashCode {return workersBindingKindInherit.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseInherit(workersBindingKindInherit: $workersBindingKindInherit)';}
}
@immutable final class WorkersBindingItemResponseImages extends WorkersBindingItemResponse {const WorkersBindingItemResponseImages(this.workersBindingKindImages);

factory WorkersBindingItemResponseImages.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseImages(WorkersBindingKindImages.fromJson(json));}

final WorkersBindingKindImages workersBindingKindImages;

@override String get type {return 'images';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindImages.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseImages && workersBindingKindImages == other.workersBindingKindImages;}
@override int get hashCode {return workersBindingKindImages.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseImages(workersBindingKindImages: $workersBindingKindImages)';}
}
@immutable final class WorkersBindingItemResponseJson extends WorkersBindingItemResponse {const WorkersBindingItemResponseJson(this.workersBindingKindJson);

factory WorkersBindingItemResponseJson.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseJson(WorkersBindingKindJson.fromJson(json));}

final WorkersBindingKindJson workersBindingKindJson;

@override String get type {return 'json';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindJson.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseJson && workersBindingKindJson == other.workersBindingKindJson;}
@override int get hashCode {return workersBindingKindJson.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseJson(workersBindingKindJson: $workersBindingKindJson)';}
}
@immutable final class WorkersBindingItemResponseKvNamespace extends WorkersBindingItemResponse {const WorkersBindingItemResponseKvNamespace(this.workersBindingKindKvNamespace);

factory WorkersBindingItemResponseKvNamespace.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseKvNamespace(WorkersBindingKindKvNamespace.fromJson(json));}

final WorkersBindingKindKvNamespace workersBindingKindKvNamespace;

@override String get type {return 'kv_namespace';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindKvNamespace.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseKvNamespace && workersBindingKindKvNamespace == other.workersBindingKindKvNamespace;}
@override int get hashCode {return workersBindingKindKvNamespace.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseKvNamespace(workersBindingKindKvNamespace: $workersBindingKindKvNamespace)';}
}
@immutable final class WorkersBindingItemResponseMtlsCertificate extends WorkersBindingItemResponse {const WorkersBindingItemResponseMtlsCertificate(this.workersBindingKindMtlsCertificate);

factory WorkersBindingItemResponseMtlsCertificate.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseMtlsCertificate(WorkersBindingKindMtlsCertificate.fromJson(json));}

final WorkersBindingKindMtlsCertificate workersBindingKindMtlsCertificate;

@override String get type {return 'mtls_certificate';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindMtlsCertificate.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseMtlsCertificate && workersBindingKindMtlsCertificate == other.workersBindingKindMtlsCertificate;}
@override int get hashCode {return workersBindingKindMtlsCertificate.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseMtlsCertificate(workersBindingKindMtlsCertificate: $workersBindingKindMtlsCertificate)';}
}
@immutable final class WorkersBindingItemResponsePlainText extends WorkersBindingItemResponse {const WorkersBindingItemResponsePlainText(this.workersBindingKindPlainText);

factory WorkersBindingItemResponsePlainText.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponsePlainText(WorkersBindingKindPlainText.fromJson(json));}

final WorkersBindingKindPlainText workersBindingKindPlainText;

@override String get type {return 'plain_text';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindPlainText.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponsePlainText && workersBindingKindPlainText == other.workersBindingKindPlainText;}
@override int get hashCode {return workersBindingKindPlainText.hashCode;}
@override String toString() {return 'WorkersBindingItemResponsePlainText(workersBindingKindPlainText: $workersBindingKindPlainText)';}
}
@immutable final class WorkersBindingItemResponsePipelines extends WorkersBindingItemResponse {const WorkersBindingItemResponsePipelines(this.workersBindingKindPipelines);

factory WorkersBindingItemResponsePipelines.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponsePipelines(WorkersBindingKindPipelines.fromJson(json));}

final WorkersBindingKindPipelines workersBindingKindPipelines;

@override String get type {return 'pipelines';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindPipelines.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponsePipelines && workersBindingKindPipelines == other.workersBindingKindPipelines;}
@override int get hashCode {return workersBindingKindPipelines.hashCode;}
@override String toString() {return 'WorkersBindingItemResponsePipelines(workersBindingKindPipelines: $workersBindingKindPipelines)';}
}
@immutable final class WorkersBindingItemResponseQueue extends WorkersBindingItemResponse {const WorkersBindingItemResponseQueue(this.workersBindingKindQueue);

factory WorkersBindingItemResponseQueue.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseQueue(WorkersBindingKindQueue.fromJson(json));}

final WorkersBindingKindQueue workersBindingKindQueue;

@override String get type {return 'queue';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindQueue.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseQueue && workersBindingKindQueue == other.workersBindingKindQueue;}
@override int get hashCode {return workersBindingKindQueue.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseQueue(workersBindingKindQueue: $workersBindingKindQueue)';}
}
@immutable final class WorkersBindingItemResponseRatelimit extends WorkersBindingItemResponse {const WorkersBindingItemResponseRatelimit(this.workersBindingKindRatelimit);

factory WorkersBindingItemResponseRatelimit.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseRatelimit(WorkersBindingKindRatelimit.fromJson(json));}

final WorkersBindingKindRatelimit workersBindingKindRatelimit;

@override String get type {return 'ratelimit';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindRatelimit.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseRatelimit && workersBindingKindRatelimit == other.workersBindingKindRatelimit;}
@override int get hashCode {return workersBindingKindRatelimit.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseRatelimit(workersBindingKindRatelimit: $workersBindingKindRatelimit)';}
}
@immutable final class WorkersBindingItemResponseR2Bucket extends WorkersBindingItemResponse {const WorkersBindingItemResponseR2Bucket(this.workersBindingKindR2Bucket);

factory WorkersBindingItemResponseR2Bucket.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseR2Bucket(WorkersBindingKindR2Bucket.fromJson(json));}

final WorkersBindingKindR2Bucket workersBindingKindR2Bucket;

@override String get type {return 'r2_bucket';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindR2Bucket.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseR2Bucket && workersBindingKindR2Bucket == other.workersBindingKindR2Bucket;}
@override int get hashCode {return workersBindingKindR2Bucket.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseR2Bucket(workersBindingKindR2Bucket: $workersBindingKindR2Bucket)';}
}
@immutable final class WorkersBindingItemResponseSecretText extends WorkersBindingItemResponse {const WorkersBindingItemResponseSecretText(this.workersBindingKindSecretTextResponse);

factory WorkersBindingItemResponseSecretText.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseSecretText(WorkersBindingKindSecretTextResponse.fromJson(json));}

final WorkersBindingKindSecretTextResponse workersBindingKindSecretTextResponse;

@override String get type {return 'secret_text';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindSecretTextResponse.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseSecretText && workersBindingKindSecretTextResponse == other.workersBindingKindSecretTextResponse;}
@override int get hashCode {return workersBindingKindSecretTextResponse.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseSecretText(workersBindingKindSecretTextResponse: $workersBindingKindSecretTextResponse)';}
}
@immutable final class WorkersBindingItemResponseSendEmail extends WorkersBindingItemResponse {const WorkersBindingItemResponseSendEmail(this.workersBindingKindSendEmail);

factory WorkersBindingItemResponseSendEmail.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseSendEmail(WorkersBindingKindSendEmail.fromJson(json));}

final WorkersBindingKindSendEmail workersBindingKindSendEmail;

@override String get type {return 'send_email';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindSendEmail.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseSendEmail && workersBindingKindSendEmail == other.workersBindingKindSendEmail;}
@override int get hashCode {return workersBindingKindSendEmail.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseSendEmail(workersBindingKindSendEmail: $workersBindingKindSendEmail)';}
}
@immutable final class WorkersBindingItemResponseService extends WorkersBindingItemResponse {const WorkersBindingItemResponseService(this.workersBindingKindService);

factory WorkersBindingItemResponseService.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseService(WorkersBindingKindService.fromJson(json));}

final WorkersBindingKindService workersBindingKindService;

@override String get type {return 'service';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindService.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseService && workersBindingKindService == other.workersBindingKindService;}
@override int get hashCode {return workersBindingKindService.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseService(workersBindingKindService: $workersBindingKindService)';}
}
@immutable final class WorkersBindingItemResponseTextBlob extends WorkersBindingItemResponse {const WorkersBindingItemResponseTextBlob(this.workersBindingKindTextBlob);

factory WorkersBindingItemResponseTextBlob.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseTextBlob(WorkersBindingKindTextBlob.fromJson(json));}

final WorkersBindingKindTextBlob workersBindingKindTextBlob;

@override String get type {return 'text_blob';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindTextBlob.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseTextBlob && workersBindingKindTextBlob == other.workersBindingKindTextBlob;}
@override int get hashCode {return workersBindingKindTextBlob.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseTextBlob(workersBindingKindTextBlob: $workersBindingKindTextBlob)';}
}
@immutable final class WorkersBindingItemResponseVectorize extends WorkersBindingItemResponse {const WorkersBindingItemResponseVectorize(this.workersBindingKindVectorize);

factory WorkersBindingItemResponseVectorize.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseVectorize(WorkersBindingKindVectorize.fromJson(json));}

final WorkersBindingKindVectorize workersBindingKindVectorize;

@override String get type {return 'vectorize';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindVectorize.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseVectorize && workersBindingKindVectorize == other.workersBindingKindVectorize;}
@override int get hashCode {return workersBindingKindVectorize.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseVectorize(workersBindingKindVectorize: $workersBindingKindVectorize)';}
}
@immutable final class WorkersBindingItemResponseVersionMetadata extends WorkersBindingItemResponse {const WorkersBindingItemResponseVersionMetadata(this.workersBindingKindVersionMetadata);

factory WorkersBindingItemResponseVersionMetadata.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseVersionMetadata(WorkersBindingKindVersionMetadata.fromJson(json));}

final WorkersBindingKindVersionMetadata workersBindingKindVersionMetadata;

@override String get type {return 'version_metadata';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindVersionMetadata.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseVersionMetadata && workersBindingKindVersionMetadata == other.workersBindingKindVersionMetadata;}
@override int get hashCode {return workersBindingKindVersionMetadata.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseVersionMetadata(workersBindingKindVersionMetadata: $workersBindingKindVersionMetadata)';}
}
@immutable final class WorkersBindingItemResponseSecretsStoreSecret extends WorkersBindingItemResponse {const WorkersBindingItemResponseSecretsStoreSecret(this.workersBindingKindSecretsStoreSecret);

factory WorkersBindingItemResponseSecretsStoreSecret.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseSecretsStoreSecret(WorkersBindingKindSecretsStoreSecret.fromJson(json));}

final WorkersBindingKindSecretsStoreSecret workersBindingKindSecretsStoreSecret;

@override String get type {return 'secrets_store_secret';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindSecretsStoreSecret.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseSecretsStoreSecret && workersBindingKindSecretsStoreSecret == other.workersBindingKindSecretsStoreSecret;}
@override int get hashCode {return workersBindingKindSecretsStoreSecret.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseSecretsStoreSecret(workersBindingKindSecretsStoreSecret: $workersBindingKindSecretsStoreSecret)';}
}
@immutable final class WorkersBindingItemResponseSecretKey extends WorkersBindingItemResponse {const WorkersBindingItemResponseSecretKey(this.workersBindingKindSecretKeyResponse);

factory WorkersBindingItemResponseSecretKey.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseSecretKey(WorkersBindingKindSecretKeyResponse.fromJson(json));}

final WorkersBindingKindSecretKeyResponse workersBindingKindSecretKeyResponse;

@override String get type {return 'secret_key';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindSecretKeyResponse.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseSecretKey && workersBindingKindSecretKeyResponse == other.workersBindingKindSecretKeyResponse;}
@override int get hashCode {return workersBindingKindSecretKeyResponse.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseSecretKey(workersBindingKindSecretKeyResponse: $workersBindingKindSecretKeyResponse)';}
}
@immutable final class WorkersBindingItemResponseWorkflow extends WorkersBindingItemResponse {const WorkersBindingItemResponseWorkflow(this.workersBindingKindWorkflow);

factory WorkersBindingItemResponseWorkflow.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseWorkflow(WorkersBindingKindWorkflow.fromJson(json));}

final WorkersBindingKindWorkflow workersBindingKindWorkflow;

@override String get type {return 'workflow';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindWorkflow.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseWorkflow && workersBindingKindWorkflow == other.workersBindingKindWorkflow;}
@override int get hashCode {return workersBindingKindWorkflow.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseWorkflow(workersBindingKindWorkflow: $workersBindingKindWorkflow)';}
}
@immutable final class WorkersBindingItemResponseWasmModule extends WorkersBindingItemResponse {const WorkersBindingItemResponseWasmModule(this.workersBindingKindWasmModule);

factory WorkersBindingItemResponseWasmModule.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseWasmModule(WorkersBindingKindWasmModule.fromJson(json));}

final WorkersBindingKindWasmModule workersBindingKindWasmModule;

@override String get type {return 'wasm_module';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindWasmModule.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseWasmModule && workersBindingKindWasmModule == other.workersBindingKindWasmModule;}
@override int get hashCode {return workersBindingKindWasmModule.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseWasmModule(workersBindingKindWasmModule: $workersBindingKindWasmModule)';}
}
@immutable final class WorkersBindingItemResponseVpcService extends WorkersBindingItemResponse {const WorkersBindingItemResponseVpcService(this.workersBindingKindVpcService);

factory WorkersBindingItemResponseVpcService.fromJson(Map<String, dynamic> json) {return WorkersBindingItemResponseVpcService(WorkersBindingKindVpcService.fromJson(json));}

final WorkersBindingKindVpcService workersBindingKindVpcService;

@override String get type {return 'vpc_service';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindVpcService.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponseVpcService && workersBindingKindVpcService == other.workersBindingKindVpcService;}
@override int get hashCode {return workersBindingKindVpcService.hashCode;}
@override String toString() {return 'WorkersBindingItemResponseVpcService(workersBindingKindVpcService: $workersBindingKindVpcService)';}
}
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class WorkersBindingItemResponse$Unknown extends WorkersBindingItemResponse {const WorkersBindingItemResponse$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type {return json['type'] as String? ?? '';}
@override Map<String, dynamic> toJson() {return json;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingItemResponse$Unknown && json == other.json;}
@override int get hashCode {return json.hashCode;}
@override String toString() {return 'WorkersBindingItemResponse.unknown($json)';}
}
