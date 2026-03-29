// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'fraudulent_additional_documentation.dart';import 'fraudulent_explanation.dart';final class Fraudulent {const Fraudulent({this.additionalDocumentation, this.explanation, });

factory Fraudulent.fromJson(Map<String, dynamic> json) { return Fraudulent(
  additionalDocumentation: json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => FraudulentAdditionalDocumentationVariant2.fromJson(v as String),) : null,
  explanation: json['explanation'] != null ? OneOf2.parse(json['explanation'], fromA: (v) => v as String, fromB: (v) => FraudulentExplanationVariant2.fromJson(v as String),) : null,
); }

final FraudulentAdditionalDocumentation? additionalDocumentation;

final FraudulentExplanation? explanation;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation != null) 'additional_documentation': additionalDocumentation?.toJson(),
  if (explanation != null) 'explanation': explanation?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Fraudulent copyWith({FraudulentAdditionalDocumentation Function()? additionalDocumentation, FraudulentExplanation Function()? explanation, }) { return Fraudulent(
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
