// GENERATED CODE - DO NOT MODIFY BY HAND

import 'container_auto_param.dart';import 'container_reference_param.dart';import 'local_environment_param.dart';sealed class FunctionShellToolParamEnvironment {const FunctionShellToolParamEnvironment();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory FunctionShellToolParamEnvironment.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'ContainerAutoParam' => FunctionShellToolParamEnvironmentContainerAutoParam.fromJson(json),
  'LocalEnvironmentParam' => FunctionShellToolParamEnvironmentLocalEnvironmentParam.fromJson(json),
  'ContainerReferenceParam' => FunctionShellToolParamEnvironmentContainerReferenceParam.fromJson(json),
  _ => FunctionShellToolParamEnvironment$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is FunctionShellToolParamEnvironment$Unknown; } 
 }
final class FunctionShellToolParamEnvironmentContainerAutoParam extends FunctionShellToolParamEnvironment {const FunctionShellToolParamEnvironmentContainerAutoParam(this.containerAutoParam);

factory FunctionShellToolParamEnvironmentContainerAutoParam.fromJson(Map<String, dynamic> json) { return FunctionShellToolParamEnvironmentContainerAutoParam(ContainerAutoParam.fromJson(json)); }

final ContainerAutoParam containerAutoParam;

@override String get type { return 'ContainerAutoParam'; } 
@override Map<String, dynamic> toJson() { return {...containerAutoParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionShellToolParamEnvironmentContainerAutoParam && containerAutoParam == other.containerAutoParam; } 
@override int get hashCode { return containerAutoParam.hashCode; } 
@override String toString() { return 'FunctionShellToolParamEnvironmentContainerAutoParam(containerAutoParam: $containerAutoParam)'; } 
 }
final class FunctionShellToolParamEnvironmentLocalEnvironmentParam extends FunctionShellToolParamEnvironment {const FunctionShellToolParamEnvironmentLocalEnvironmentParam(this.localEnvironmentParam);

factory FunctionShellToolParamEnvironmentLocalEnvironmentParam.fromJson(Map<String, dynamic> json) { return FunctionShellToolParamEnvironmentLocalEnvironmentParam(LocalEnvironmentParam.fromJson(json)); }

final LocalEnvironmentParam localEnvironmentParam;

@override String get type { return 'LocalEnvironmentParam'; } 
@override Map<String, dynamic> toJson() { return {...localEnvironmentParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionShellToolParamEnvironmentLocalEnvironmentParam && localEnvironmentParam == other.localEnvironmentParam; } 
@override int get hashCode { return localEnvironmentParam.hashCode; } 
@override String toString() { return 'FunctionShellToolParamEnvironmentLocalEnvironmentParam(localEnvironmentParam: $localEnvironmentParam)'; } 
 }
final class FunctionShellToolParamEnvironmentContainerReferenceParam extends FunctionShellToolParamEnvironment {const FunctionShellToolParamEnvironmentContainerReferenceParam(this.containerReferenceParam);

factory FunctionShellToolParamEnvironmentContainerReferenceParam.fromJson(Map<String, dynamic> json) { return FunctionShellToolParamEnvironmentContainerReferenceParam(ContainerReferenceParam.fromJson(json)); }

final ContainerReferenceParam containerReferenceParam;

@override String get type { return 'ContainerReferenceParam'; } 
@override Map<String, dynamic> toJson() { return {...containerReferenceParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionShellToolParamEnvironmentContainerReferenceParam && containerReferenceParam == other.containerReferenceParam; } 
@override int get hashCode { return containerReferenceParam.hashCode; } 
@override String toString() { return 'FunctionShellToolParamEnvironmentContainerReferenceParam(containerReferenceParam: $containerReferenceParam)'; } 
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
