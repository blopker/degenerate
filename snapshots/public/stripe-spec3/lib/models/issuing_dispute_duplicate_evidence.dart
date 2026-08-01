// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'issuing_dispute_duplicate_evidence_additional_documentation.dart';import 'issuing_dispute_duplicate_evidence_card_statement.dart';import 'issuing_dispute_duplicate_evidence_cash_receipt.dart';import 'issuing_dispute_duplicate_evidence_check_image.dart';/// 
@immutable final class IssuingDisputeDuplicateEvidence {const IssuingDisputeDuplicateEvidence({this.additionalDocumentation = const Omittable.absent(), this.cardStatement = const Omittable.absent(), this.cashReceipt = const Omittable.absent(), this.checkImage = const Omittable.absent(), this.explanation = const Omittable.absent(), this.originalTransaction = const Omittable.absent(), });

factory IssuingDisputeDuplicateEvidence.fromJson(Map<String, dynamic> json) { return IssuingDisputeDuplicateEvidence(
  additionalDocumentation: json.containsKey('additional_documentation') ? Omittable(json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  cardStatement: json.containsKey('card_statement') ? Omittable(json['card_statement'] != null ? OneOf2.parse(json['card_statement'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  cashReceipt: json.containsKey('cash_receipt') ? Omittable(json['cash_receipt'] != null ? OneOf2.parse(json['cash_receipt'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  checkImage: json.containsKey('check_image') ? Omittable(json['check_image'] != null ? OneOf2.parse(json['check_image'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  explanation: json.containsKey('explanation') ? Omittable(json['explanation'] as String?) : const Omittable.absent(),
  originalTransaction: json.containsKey('original_transaction') ? Omittable(json['original_transaction'] as String?) : const Omittable.absent(),
); }

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
final Omittable<IssuingDisputeDuplicateEvidenceAdditionalDocumentation?> additionalDocumentation;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the card statement showing that the product had already been paid for.
final Omittable<IssuingDisputeDuplicateEvidenceCardStatement?> cardStatement;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the receipt showing that the product had been paid for in cash.
final Omittable<IssuingDisputeDuplicateEvidenceCashReceipt?> cashReceipt;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Image of the front and back of the check that was used to pay for the product.
final Omittable<IssuingDisputeDuplicateEvidenceCheckImage?> checkImage;

/// Explanation of why the cardholder is disputing this transaction.
final Omittable<String?> explanation;

/// Transaction (e.g., ipi_...) that the disputed transaction is a duplicate of. Of the two or more transactions that are copies of each other, this is original undisputed one.
final Omittable<String?> originalTransaction;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation.isPresent) 'additional_documentation': additionalDocumentation.value?.toJson(),
  if (cardStatement.isPresent) 'card_statement': cardStatement.value?.toJson(),
  if (cashReceipt.isPresent) 'cash_receipt': cashReceipt.value?.toJson(),
  if (checkImage.isPresent) 'check_image': checkImage.value?.toJson(),
  if (explanation.isPresent) 'explanation': explanation.value,
  if (originalTransaction.isPresent) 'original_transaction': originalTransaction.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'card_statement', 'cash_receipt', 'check_image', 'explanation', 'original_transaction'}.contains(key)); } 
IssuingDisputeDuplicateEvidence copyWith({Omittable<IssuingDisputeDuplicateEvidenceAdditionalDocumentation?>? additionalDocumentation, Omittable<IssuingDisputeDuplicateEvidenceCardStatement?>? cardStatement, Omittable<IssuingDisputeDuplicateEvidenceCashReceipt?>? cashReceipt, Omittable<IssuingDisputeDuplicateEvidenceCheckImage?>? checkImage, Omittable<String?>? explanation, Omittable<String?>? originalTransaction, }) { return IssuingDisputeDuplicateEvidence(
  additionalDocumentation: additionalDocumentation ?? this.additionalDocumentation,
  cardStatement: cardStatement ?? this.cardStatement,
  cashReceipt: cashReceipt ?? this.cashReceipt,
  checkImage: checkImage ?? this.checkImage,
  explanation: explanation ?? this.explanation,
  originalTransaction: originalTransaction ?? this.originalTransaction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingDisputeDuplicateEvidence &&
          additionalDocumentation == other.additionalDocumentation &&
          cardStatement == other.cardStatement &&
          cashReceipt == other.cashReceipt &&
          checkImage == other.checkImage &&
          explanation == other.explanation &&
          originalTransaction == other.originalTransaction; } 
@override int get hashCode { return Object.hash(additionalDocumentation, cardStatement, cashReceipt, checkImage, explanation, originalTransaction); } 
@override String toString() { return 'IssuingDisputeDuplicateEvidence(additionalDocumentation: $additionalDocumentation, cardStatement: $cardStatement, cashReceipt: $cashReceipt, checkImage: $checkImage, explanation: $explanation, originalTransaction: $originalTransaction)'; } 
 }
