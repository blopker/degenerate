// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'issuing_cardholder_id_document_back.dart';import 'issuing_cardholder_id_document_front.dart';/// 
@immutable final class IssuingCardholderIdDocument {const IssuingCardholderIdDocument({this.back = const Omittable.absent(), this.front = const Omittable.absent(), });

factory IssuingCardholderIdDocument.fromJson(Map<String, dynamic> json) { return IssuingCardholderIdDocument(
  back: json.containsKey('back') ? Omittable(json['back'] != null ? OneOf2.parse(json['back'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  front: json.containsKey('front') ? Omittable(json['front'] != null ? OneOf2.parse(json['front'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
); }

/// The back of a document returned by a [file upload](https://api.stripe.com#create_file) with a `purpose` value of `identity_document`.
final Omittable<IssuingCardholderIdDocumentBack?> back;

/// The front of a document returned by a [file upload](https://api.stripe.com#create_file) with a `purpose` value of `identity_document`.
final Omittable<IssuingCardholderIdDocumentFront?> front;

Map<String, dynamic> toJson() { return {
  if (back.isPresent) 'back': back.value?.toJson(),
  if (front.isPresent) 'front': front.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'back', 'front'}.contains(key)); } 
IssuingCardholderIdDocument copyWith({Omittable<IssuingCardholderIdDocumentBack?>? back, Omittable<IssuingCardholderIdDocumentFront?>? front, }) { return IssuingCardholderIdDocument(
  back: back ?? this.back,
  front: front ?? this.front,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingCardholderIdDocument &&
          back == other.back &&
          front == other.front; } 
@override int get hashCode { return Object.hash(back, front); } 
@override String toString() { return 'IssuingCardholderIdDocument(back: $back, front: $front)'; } 
 }
