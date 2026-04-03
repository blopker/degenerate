// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_tool_param_format.dart';/// A custom tool that processes input using a specified format. Learn more about   [custom tools](/docs/guides/function-calling#custom-tools)
@immutable final class CustomToolParam {const CustomToolParam({required this.name, this.type = 'custom', this.description, this.format, this.deferLoading, });

factory CustomToolParam.fromJson(Map<String, dynamic> json) { return CustomToolParam(
  type: json['type'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  format: json['format'] != null ? CustomToolParamFormat.fromJson(json['format'] as Map<String, dynamic>) : null,
  deferLoading: json['defer_loading'] as bool?,
); }

/// The type of the custom tool. Always `custom`.
final String type;

/// The name of the custom tool, used to identify it in tool calls.
final String name;

/// Optional description of the custom tool, used to provide more context.
final String? description;

/// The input format for the custom tool. Default is unconstrained text.
final CustomToolParamFormat? format;

/// Whether this tool should be deferred and discovered via tool search.
final bool? deferLoading;

Map<String, dynamic> toJson() { return {
  'type': type,
  'name': name,
  'description': ?description,
  if (format != null) 'format': format?.toJson(),
  'defer_loading': ?deferLoading,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('name') && json['name'] is String; } 
CustomToolParam copyWith({String? type, String? name, String Function()? description, CustomToolParamFormat Function()? format, bool Function()? deferLoading, }) { return CustomToolParam(
  type: type ?? this.type,
  name: name ?? this.name,
  description: description != null ? description() : this.description,
  format: format != null ? format() : this.format,
  deferLoading: deferLoading != null ? deferLoading() : this.deferLoading,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomToolParam &&
          type == other.type &&
          name == other.name &&
          description == other.description &&
          format == other.format &&
          deferLoading == other.deferLoading; } 
@override int get hashCode { return Object.hash(type, name, description, format, deferLoading); } 
@override String toString() { return 'CustomToolParam(type: $type, name: $name, description: $description, format: $format, deferLoading: $deferLoading)'; } 
 }
