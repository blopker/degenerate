// GENERATED CODE - DO NOT MODIFY BY HAND

import 'custom_tool_param.dart';import 'function_tool_param.dart';/// A function or custom tool that belongs to a namespace.
sealed class NamespaceToolParamTools {const NamespaceToolParamTools();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory NamespaceToolParamTools.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'FunctionToolParam' => NamespaceToolParamToolsFunctionToolParam.fromJson(json),
  'CustomToolParam' => NamespaceToolParamToolsCustomToolParam.fromJson(json),
  _ => NamespaceToolParamTools$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is NamespaceToolParamTools$Unknown; } 
 }
final class NamespaceToolParamToolsFunctionToolParam extends NamespaceToolParamTools {const NamespaceToolParamToolsFunctionToolParam(this.functionToolParam);

factory NamespaceToolParamToolsFunctionToolParam.fromJson(Map<String, dynamic> json) { return NamespaceToolParamToolsFunctionToolParam(FunctionToolParam.fromJson(json)); }

final FunctionToolParam functionToolParam;

@override String get type { return 'FunctionToolParam'; } 
@override Map<String, dynamic> toJson() { return {...functionToolParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NamespaceToolParamToolsFunctionToolParam && functionToolParam == other.functionToolParam; } 
@override int get hashCode { return functionToolParam.hashCode; } 
@override String toString() { return 'NamespaceToolParamToolsFunctionToolParam(functionToolParam: $functionToolParam)'; } 
 }
final class NamespaceToolParamToolsCustomToolParam extends NamespaceToolParamTools {const NamespaceToolParamToolsCustomToolParam(this.customToolParam);

factory NamespaceToolParamToolsCustomToolParam.fromJson(Map<String, dynamic> json) { return NamespaceToolParamToolsCustomToolParam(CustomToolParam.fromJson(json)); }

final CustomToolParam customToolParam;

@override String get type { return 'CustomToolParam'; } 
@override Map<String, dynamic> toJson() { return {...customToolParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NamespaceToolParamToolsCustomToolParam && customToolParam == other.customToolParam; } 
@override int get hashCode { return customToolParam.hashCode; } 
@override String toString() { return 'NamespaceToolParamToolsCustomToolParam(customToolParam: $customToolParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class NamespaceToolParamTools$Unknown extends NamespaceToolParamTools {const NamespaceToolParamTools$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NamespaceToolParamTools$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'NamespaceToolParamTools.unknown($json)'; } 
 }
