// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'no_valid_authorization_additional_documentation.dart';import 'no_valid_authorization_explanation.dart';@immutable final class NoValidAuthorization {const NoValidAuthorization({this.additionalDocumentation, this.explanation, });

factory NoValidAuthorization.fromJson(Map<String, dynamic> json) { return NoValidAuthorization(
  additionalDocumentation: json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => NoValidAuthorizationAdditionalDocumentationVariant2.fromJson(v as String),) : null,
  explanation: json['explanation'] != null ? OneOf2.parse(json['explanation'], fromA: (v) => v as String, fromB: (v) => NoValidAuthorizationExplanationVariant2.fromJson(v as String),) : null,
); }

final NoValidAuthorizationAdditionalDocumentation? additionalDocumentation;

final NoValidAuthorizationExplanation? explanation;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation != null) 'additional_documentation': additionalDocumentation?.toJson(),
  if (explanation != null) 'explanation': explanation?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'explanation'}.contains(key)); } 
NoValidAuthorization copyWith({NoValidAuthorizationAdditionalDocumentation Function()? additionalDocumentation, NoValidAuthorizationExplanation Function()? explanation, }) { return NoValidAuthorization(
  additionalDocumentation: additionalDocumentation != null ? additionalDocumentation() : this.additionalDocumentation,
  explanation: explanation != null ? explanation() : this.explanation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NoValidAuthorization &&
          additionalDocumentation == other.additionalDocumentation &&
          explanation == other.explanation; } 
@override int get hashCode { return Object.hash(additionalDocumentation, explanation); } 
@override String toString() { return 'NoValidAuthorization(additionalDocumentation: $additionalDocumentation, explanation: $explanation)'; } 
 }
