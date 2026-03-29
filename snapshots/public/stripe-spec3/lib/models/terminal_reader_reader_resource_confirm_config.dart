// GENERATED CODE - DO NOT MODIFY BY HAND

/// Represents a per-transaction override of a reader configuration
final class TerminalReaderReaderResourceConfirmConfig {const TerminalReaderReaderResourceConfirmConfig({this.returnUrl});

factory TerminalReaderReaderResourceConfirmConfig.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceConfirmConfig(
  returnUrl: json['return_url'] as String?,
); }

/// If the customer doesn't abandon authenticating the payment, they're redirected to this URL after completion.
final String? returnUrl;

Map<String, dynamic> toJson() { return {
  'return_url': ?returnUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'return_url'}.contains(key)); } 
TerminalReaderReaderResourceConfirmConfig copyWith({String Function()? returnUrl}) { return TerminalReaderReaderResourceConfirmConfig(
  returnUrl: returnUrl != null ? returnUrl() : this.returnUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceConfirmConfig &&
          returnUrl == other.returnUrl; } 
@override int get hashCode { return returnUrl.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceConfirmConfig(returnUrl: $returnUrl)'; } 
 }
