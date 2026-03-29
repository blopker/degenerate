// GENERATED CODE - DO NOT MODIFY BY HAND

import 'quotes_resource_from_quote.dart';/// Details of the quote that was cloned. See the [cloning documentation](https://docs.stripe.com/quotes/clone) for more details.
final class QuoteFromQuote {const QuoteFromQuote({this.quotesResourceFromQuote});

factory QuoteFromQuote.fromJson(Map<String, dynamic> json) { return QuoteFromQuote(
  quotesResourceFromQuote: QuotesResourceFromQuote.canParse(json) ? QuotesResourceFromQuote.fromJson(json) : null,
); }

final QuotesResourceFromQuote? quotesResourceFromQuote;

/// At least one variant must be present.
bool get isValid { return quotesResourceFromQuote != null; } 
Map<String, dynamic> toJson() { return {
  ...?quotesResourceFromQuote?.toJson(),
}; } 
 }
