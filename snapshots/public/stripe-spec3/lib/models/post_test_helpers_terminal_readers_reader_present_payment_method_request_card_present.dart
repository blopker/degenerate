// GENERATED CODE - DO NOT MODIFY BY HAND

/// Simulated data for the card_present payment method.
final class PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCardPresent {const PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCardPresent({this.number});

factory PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCardPresent.fromJson(Map<String, dynamic> json) { return PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCardPresent(
  number: json['number'] as String?,
); }

final String? number;

Map<String, dynamic> toJson() { return {
  'number': ?number,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCardPresent copyWith({String Function()? number}) { return PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCardPresent(
  number: number != null ? number() : this.number,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCardPresent &&
          number == other.number; } 
@override int get hashCode { return number.hashCode; } 
@override String toString() { return 'PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCardPresent(number: $number)'; } 
 }
