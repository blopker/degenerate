// GENERATED CODE - DO NOT MODIFY BY HAND

import 'custom_grammar_format_param.dart';import 'custom_text_format_param.dart';/// The input format for the custom tool. Default is unconstrained text.
sealed class CustomToolParamFormat {const CustomToolParamFormat();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CustomToolParamFormat.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'text' => CustomToolParamFormatText.fromJson(json),
  'grammar' => CustomToolParamFormatGrammar.fromJson(json),
  _ => CustomToolParamFormat$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CustomToolParamFormat$Unknown; } 
 }
final class CustomToolParamFormatText extends CustomToolParamFormat {const CustomToolParamFormatText(this.customTextFormatParam);

factory CustomToolParamFormatText.fromJson(Map<String, dynamic> json) { return CustomToolParamFormatText(CustomTextFormatParam.fromJson(json)); }

final CustomTextFormatParam customTextFormatParam;

@override String get type { return 'text'; } 
@override Map<String, dynamic> toJson() { return {...customTextFormatParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomToolParamFormatText && customTextFormatParam == other.customTextFormatParam; } 
@override int get hashCode { return customTextFormatParam.hashCode; } 
@override String toString() { return 'CustomToolParamFormatText(customTextFormatParam: $customTextFormatParam)'; } 
 }
final class CustomToolParamFormatGrammar extends CustomToolParamFormat {const CustomToolParamFormatGrammar(this.customGrammarFormatParam);

factory CustomToolParamFormatGrammar.fromJson(Map<String, dynamic> json) { return CustomToolParamFormatGrammar(CustomGrammarFormatParam.fromJson(json)); }

final CustomGrammarFormatParam customGrammarFormatParam;

@override String get type { return 'grammar'; } 
@override Map<String, dynamic> toJson() { return {...customGrammarFormatParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomToolParamFormatGrammar && customGrammarFormatParam == other.customGrammarFormatParam; } 
@override int get hashCode { return customGrammarFormatParam.hashCode; } 
@override String toString() { return 'CustomToolParamFormatGrammar(customGrammarFormatParam: $customGrammarFormatParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class CustomToolParamFormat$Unknown extends CustomToolParamFormat {const CustomToolParamFormat$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomToolParamFormat$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CustomToolParamFormat.unknown($json)'; } 
 }
