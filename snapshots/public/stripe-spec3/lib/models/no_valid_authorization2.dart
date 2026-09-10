// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'no_valid_authorization2_additional_documentation.dart';import 'no_valid_authorization2_explanation.dart';@immutable final class NoValidAuthorization2 {const NoValidAuthorization2({this.additionalDocumentation, this.explanation, });

factory NoValidAuthorization2.fromJson(Map<String, dynamic> json) {return NoValidAuthorization2(
  additionalDocumentation: json['additional_documentation'] != null ? NoValidAuthorization2AdditionalDocumentation.fromJson(json['additional_documentation']) : null,
  explanation: json['explanation'] != null ? NoValidAuthorization2Explanation.fromJson(json['explanation']) : null,
);}

final NoValidAuthorization2AdditionalDocumentation? additionalDocumentation;

final NoValidAuthorization2Explanation? explanation;

Map<String, dynamic> toJson() {return {
  if (additionalDocumentation != null) 'additional_documentation': additionalDocumentation?.toJson(),
  if (explanation != null) 'explanation': explanation?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'additional_documentation', 'explanation'}.contains(key));}
NoValidAuthorization2 copyWith({NoValidAuthorization2AdditionalDocumentation? Function()? additionalDocumentation, NoValidAuthorization2Explanation? Function()? explanation, }) {return NoValidAuthorization2(
  additionalDocumentation: additionalDocumentation != null ? additionalDocumentation() : this.additionalDocumentation,
  explanation: explanation != null ? explanation() : this.explanation,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is NoValidAuthorization2 &&
          additionalDocumentation == other.additionalDocumentation &&
          explanation == other.explanation;}
@override int get hashCode {return Object.hash(additionalDocumentation, explanation);}
@override String toString() {return 'NoValidAuthorization2(additionalDocumentation: $additionalDocumentation, explanation: $explanation)';}
}
