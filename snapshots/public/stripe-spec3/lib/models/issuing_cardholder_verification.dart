// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_cardholder_id_document.dart';/// 
@immutable final class IssuingCardholderVerification {const IssuingCardholderVerification({this.document = const Omittable.absent()});

factory IssuingCardholderVerification.fromJson(Map<String, dynamic> json) { return IssuingCardholderVerification(
  document: json.containsKey('document') ? Omittable(json['document'] != null ? IssuingCardholderIdDocument.fromJson(json['document'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// An identifying document, either a passport or local ID card.
final Omittable<IssuingCardholderIdDocument?> document;

Map<String, dynamic> toJson() { return {
  if (document.isPresent) 'document': document.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'document'}.contains(key)); } 
IssuingCardholderVerification copyWith({Omittable<IssuingCardholderIdDocument?>? document}) { return IssuingCardholderVerification(
  document: document ?? this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingCardholderVerification &&
          document == other.document; } 
@override int get hashCode { return document.hashCode; } 
@override String toString() { return 'IssuingCardholderVerification(document: $document)'; } 
 }
