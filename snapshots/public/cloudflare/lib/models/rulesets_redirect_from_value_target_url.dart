// GENERATED CODE - DO NOT MODIFY BY HAND

/// A URL to redirect the request to.
final class RulesetsRedirectFromValueTargetUrl {const RulesetsRedirectFromValueTargetUrl({this.expression, this.value, });

factory RulesetsRedirectFromValueTargetUrl.fromJson(Map<String, dynamic> json) { return RulesetsRedirectFromValueTargetUrl(
  expression: json['expression'] as String?,
  value: json['value'] as String?,
); }

/// An expression that evaluates to a URL to redirect the request to.
final String? expression;

/// A URL to redirect the request to.
final String? value;

Map<String, dynamic> toJson() { return {
  'expression': ?expression,
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expression', 'value'}.contains(key)); } 
RulesetsRedirectFromValueTargetUrl copyWith({String Function()? expression, String Function()? value, }) { return RulesetsRedirectFromValueTargetUrl(
  expression: expression != null ? expression() : this.expression,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsRedirectFromValueTargetUrl &&
          expression == other.expression &&
          value == other.value; } 
@override int get hashCode { return Object.hash(expression, value); } 
@override String toString() { return 'RulesetsRedirectFromValueTargetUrl(expression: $expression, value: $value)'; } 
 }
