// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchCreateInstancesResponseResultPublicEndpointParamsMcp {const AiSearchCreateInstancesResponseResultPublicEndpointParamsMcp({this.description, this.disabled, });

factory AiSearchCreateInstancesResponseResultPublicEndpointParamsMcp.fromJson(Map<String, dynamic> json) {return AiSearchCreateInstancesResponseResultPublicEndpointParamsMcp(
  description: json['description'] as String?,
  disabled: json['disabled'] as bool?,
);}

final String? description;

/// Disable MCP endpoint for this public endpoint
final bool? disabled;

/// The value with the schema default applied when absent.
String get descriptionOrDefault {return description ?? "Finds exactly what you're looking for";}
/// The value with the schema default applied when absent.
bool get disabledOrDefault {return disabled ?? false;}
Map<String, dynamic> toJson() {return {
  'description': ?description,
  'disabled': ?disabled,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'description', 'disabled'}.contains(key));}
AiSearchCreateInstancesResponseResultPublicEndpointParamsMcp copyWith({String? Function()? description, bool? Function()? disabled, }) {return AiSearchCreateInstancesResponseResultPublicEndpointParamsMcp(
  description: description != null ? description() : this.description,
  disabled: disabled != null ? disabled() : this.disabled,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AiSearchCreateInstancesResponseResultPublicEndpointParamsMcp &&
          description == other.description &&
          disabled == other.disabled;}
@override int get hashCode {return Object.hash(description, disabled);}
@override String toString() {return 'AiSearchCreateInstancesResponseResultPublicEndpointParamsMcp(description: $description, disabled: $disabled)';}
}
