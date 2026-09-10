// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_binding_kind_secret_key_response.dart';import 'workers_binding_kind_secret_text_response.dart';/// A secret value accessible through a binding.
sealed class WorkersSecretResponse {const WorkersSecretResponse();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory WorkersSecretResponse.fromJson(Map<String, dynamic> json) {return switch (json['type']) {
  'secret_text' => WorkersSecretResponseSecretText.fromJson(json),
  'secret_key' => WorkersSecretResponseSecretKey.fromJson(json),
  _ => WorkersSecretResponse$Unknown(json),
};}

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return this is WorkersSecretResponse$Unknown;}
}
@immutable final class WorkersSecretResponseSecretText extends WorkersSecretResponse {const WorkersSecretResponseSecretText(this.workersBindingKindSecretTextResponse);

factory WorkersSecretResponseSecretText.fromJson(Map<String, dynamic> json) {return WorkersSecretResponseSecretText(WorkersBindingKindSecretTextResponse.fromJson(json));}

final WorkersBindingKindSecretTextResponse workersBindingKindSecretTextResponse;

@override String get type {return 'secret_text';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindSecretTextResponse.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersSecretResponseSecretText && workersBindingKindSecretTextResponse == other.workersBindingKindSecretTextResponse;}
@override int get hashCode {return workersBindingKindSecretTextResponse.hashCode;}
@override String toString() {return 'WorkersSecretResponseSecretText(workersBindingKindSecretTextResponse: $workersBindingKindSecretTextResponse)';}
}
@immutable final class WorkersSecretResponseSecretKey extends WorkersSecretResponse {const WorkersSecretResponseSecretKey(this.workersBindingKindSecretKeyResponse);

factory WorkersSecretResponseSecretKey.fromJson(Map<String, dynamic> json) {return WorkersSecretResponseSecretKey(WorkersBindingKindSecretKeyResponse.fromJson(json));}

final WorkersBindingKindSecretKeyResponse workersBindingKindSecretKeyResponse;

@override String get type {return 'secret_key';}
@override Map<String, dynamic> toJson() {return {...workersBindingKindSecretKeyResponse.toJson(), 'type': type};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersSecretResponseSecretKey && workersBindingKindSecretKeyResponse == other.workersBindingKindSecretKeyResponse;}
@override int get hashCode {return workersBindingKindSecretKeyResponse.hashCode;}
@override String toString() {return 'WorkersSecretResponseSecretKey(workersBindingKindSecretKeyResponse: $workersBindingKindSecretKeyResponse)';}
}
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class WorkersSecretResponse$Unknown extends WorkersSecretResponse {const WorkersSecretResponse$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type {return json['type'] as String? ?? '';}
@override Map<String, dynamic> toJson() {return json;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersSecretResponse$Unknown && json == other.json;}
@override int get hashCode {return json.hashCode;}
@override String toString() {return 'WorkersSecretResponse.unknown($json)';}
}
