// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'fraudulent_additional_documentation.dart';import 'fraudulent_explanation.dart';@immutable final class Fraudulent {const Fraudulent({this.additionalDocumentation, this.explanation, });

factory Fraudulent.fromJson(Map<String, dynamic> json) { return Fraudulent(
  additionalDocumentation: json['additional_documentation'] != null ? FraudulentAdditionalDocumentation.fromJson(json['additional_documentation']) : null,
  explanation: json['explanation'] != null ? FraudulentExplanation.fromJson(json['explanation']) : null,
); }

final FraudulentAdditionalDocumentation? additionalDocumentation;

final FraudulentExplanation? explanation;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation != null) 'additional_documentation': additionalDocumentation?.toJson(),
  if (explanation != null) 'explanation': explanation?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'explanation'}.contains(key)); } 
Fraudulent copyWith({FraudulentAdditionalDocumentation? Function()? additionalDocumentation, FraudulentExplanation? Function()? explanation, }) { return Fraudulent(
  additionalDocumentation: additionalDocumentation != null ? additionalDocumentation() : this.additionalDocumentation,
  explanation: explanation != null ? explanation() : this.explanation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Fraudulent &&
          additionalDocumentation == other.additionalDocumentation &&
          explanation == other.explanation; } 
@override int get hashCode { return Object.hash(additionalDocumentation, explanation); } 
@override String toString() { return 'Fraudulent(additionalDocumentation: $additionalDocumentation, explanation: $explanation)'; } 
 }
