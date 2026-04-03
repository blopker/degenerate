// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_cardholder_id_document.dart';/// 
@immutable final class IssuingCardholderVerification {const IssuingCardholderVerification({this.document});

factory IssuingCardholderVerification.fromJson(Map<String, dynamic> json) { return IssuingCardholderVerification(
  document: json['document'] != null ? IssuingCardholderIdDocument.fromJson(json['document'] as Map<String, dynamic>) : null,
); }

/// An identifying document, either a passport or local ID card.
final IssuingCardholderIdDocument? document;

Map<String, dynamic> toJson() { return {
  if (document != null) 'document': document?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'document'}.contains(key)); } 
IssuingCardholderVerification copyWith({IssuingCardholderIdDocument? Function()? document}) { return IssuingCardholderVerification(
  document: document != null ? document() : this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingCardholderVerification &&
          document == other.document; } 
@override int get hashCode { return document.hashCode; } 
@override String toString() { return 'IssuingCardholderVerification(document: $document)'; } 
 }
