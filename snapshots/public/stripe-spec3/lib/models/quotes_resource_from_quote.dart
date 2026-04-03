// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'quote.dart';import 'quotes_resource_from_quote_quote.dart';/// 
@immutable final class QuotesResourceFromQuote {const QuotesResourceFromQuote({required this.isRevision, required this.quote, });

factory QuotesResourceFromQuote.fromJson(Map<String, dynamic> json) { return QuotesResourceFromQuote(
  isRevision: json['is_revision'] as bool,
  quote: OneOf2.parse(json['quote'], fromA: (v) => v as String, fromB: (v) => Quote.fromJson(v as Map<String, dynamic>),),
); }

/// Whether this quote is a revision of a different quote.
final bool isRevision;

/// The quote that was cloned.
final QuotesResourceFromQuoteQuote quote;

Map<String, dynamic> toJson() { return {
  'is_revision': isRevision,
  'quote': quote.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('is_revision') && json['is_revision'] is bool &&
      json.containsKey('quote'); } 
QuotesResourceFromQuote copyWith({bool? isRevision, QuotesResourceFromQuoteQuote? quote, }) { return QuotesResourceFromQuote(
  isRevision: isRevision ?? this.isRevision,
  quote: quote ?? this.quote,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QuotesResourceFromQuote &&
          isRevision == other.isRevision &&
          quote == other.quote; } 
@override int get hashCode { return Object.hash(isRevision, quote); } 
@override String toString() { return 'QuotesResourceFromQuote(isRevision: $isRevision, quote: $quote)'; } 
 }
