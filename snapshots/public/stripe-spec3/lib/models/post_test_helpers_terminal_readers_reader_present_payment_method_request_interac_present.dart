// GENERATED CODE - DO NOT MODIFY BY HAND

/// Simulated data for the interac_present payment method.
final class PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestInteracPresent {const PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestInteracPresent({this.number});

factory PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestInteracPresent.fromJson(Map<String, dynamic> json) { return PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestInteracPresent(
  number: json['number'] as String?,
); }

final String? number;

Map<String, dynamic> toJson() { return {
  'number': ?number,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'number'}.contains(key)); } 
PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestInteracPresent copyWith({String Function()? number}) { return PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestInteracPresent(
  number: number != null ? number() : this.number,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestInteracPresent &&
          number == other.number; } 
@override int get hashCode { return number.hashCode; } 
@override String toString() { return 'PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestInteracPresent(number: $number)'; } 
 }
