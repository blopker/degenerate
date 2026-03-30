// GENERATED CODE - DO NOT MODIFY BY HAND

import 'container_auto_param.dart';import 'container_reference_param.dart';import 'local_environment_param.dart';sealed class FunctionShellToolParamEnvironment {const FunctionShellToolParamEnvironment();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory FunctionShellToolParamEnvironment.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'container_auto' => FunctionShellToolParamEnvironmentContainerAuto.fromJson(json),
  'local' => FunctionShellToolParamEnvironmentLocal.fromJson(json),
  'container_reference' => FunctionShellToolParamEnvironmentContainerReference.fromJson(json),
  _ => FunctionShellToolParamEnvironment$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is FunctionShellToolParamEnvironment$Unknown; } 
 }
final class FunctionShellToolParamEnvironmentContainerAuto extends FunctionShellToolParamEnvironment {const FunctionShellToolParamEnvironmentContainerAuto(this.containerAutoParam);

factory FunctionShellToolParamEnvironmentContainerAuto.fromJson(Map<String, dynamic> json) { return FunctionShellToolParamEnvironmentContainerAuto(ContainerAutoParam.fromJson(json)); }

final ContainerAutoParam containerAutoParam;

@override String get type { return 'container_auto'; } 
@override Map<String, dynamic> toJson() { return {...containerAutoParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionShellToolParamEnvironmentContainerAuto && containerAutoParam == other.containerAutoParam; } 
@override int get hashCode { return containerAutoParam.hashCode; } 
@override String toString() { return 'FunctionShellToolParamEnvironmentContainerAuto(containerAutoParam: $containerAutoParam)'; } 
 }
final class FunctionShellToolParamEnvironmentLocal extends FunctionShellToolParamEnvironment {const FunctionShellToolParamEnvironmentLocal(this.localEnvironmentParam);

factory FunctionShellToolParamEnvironmentLocal.fromJson(Map<String, dynamic> json) { return FunctionShellToolParamEnvironmentLocal(LocalEnvironmentParam.fromJson(json)); }

final LocalEnvironmentParam localEnvironmentParam;

@override String get type { return 'local'; } 
@override Map<String, dynamic> toJson() { return {...localEnvironmentParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionShellToolParamEnvironmentLocal && localEnvironmentParam == other.localEnvironmentParam; } 
@override int get hashCode { return localEnvironmentParam.hashCode; } 
@override String toString() { return 'FunctionShellToolParamEnvironmentLocal(localEnvironmentParam: $localEnvironmentParam)'; } 
 }
final class FunctionShellToolParamEnvironmentContainerReference extends FunctionShellToolParamEnvironment {const FunctionShellToolParamEnvironmentContainerReference(this.containerReferenceParam);

factory FunctionShellToolParamEnvironmentContainerReference.fromJson(Map<String, dynamic> json) { return FunctionShellToolParamEnvironmentContainerReference(ContainerReferenceParam.fromJson(json)); }

final ContainerReferenceParam containerReferenceParam;

@override String get type { return 'container_reference'; } 
@override Map<String, dynamic> toJson() { return {...containerReferenceParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionShellToolParamEnvironmentContainerReference && containerReferenceParam == other.containerReferenceParam; } 
@override int get hashCode { return containerReferenceParam.hashCode; } 
@override String toString() { return 'FunctionShellToolParamEnvironmentContainerReference(containerReferenceParam: $containerReferenceParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class FunctionShellToolParamEnvironment$Unknown extends FunctionShellToolParamEnvironment {const FunctionShellToolParamEnvironment$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionShellToolParamEnvironment$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'FunctionShellToolParamEnvironment.unknown($json)'; } 
 }
