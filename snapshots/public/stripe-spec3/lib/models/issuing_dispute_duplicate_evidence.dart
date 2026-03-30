// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'issuing_dispute_duplicate_evidence_additional_documentation.dart';import 'issuing_dispute_duplicate_evidence_card_statement.dart';import 'issuing_dispute_duplicate_evidence_cash_receipt.dart';import 'issuing_dispute_duplicate_evidence_check_image.dart';/// 
final class IssuingDisputeDuplicateEvidence {const IssuingDisputeDuplicateEvidence({this.additionalDocumentation, this.cardStatement, this.cashReceipt, this.checkImage, this.explanation, this.originalTransaction, });

factory IssuingDisputeDuplicateEvidence.fromJson(Map<String, dynamic> json) { return IssuingDisputeDuplicateEvidence(
  additionalDocumentation: json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null,
  cardStatement: json['card_statement'] != null ? OneOf2.parse(json['card_statement'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null,
  cashReceipt: json['cash_receipt'] != null ? OneOf2.parse(json['cash_receipt'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null,
  checkImage: json['check_image'] != null ? OneOf2.parse(json['check_image'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null,
  explanation: json['explanation'] as String?,
  originalTransaction: json['original_transaction'] as String?,
); }

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
final IssuingDisputeDuplicateEvidenceAdditionalDocumentation? additionalDocumentation;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the card statement showing that the product had already been paid for.
final IssuingDisputeDuplicateEvidenceCardStatement? cardStatement;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the receipt showing that the product had been paid for in cash.
final IssuingDisputeDuplicateEvidenceCashReceipt? cashReceipt;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Image of the front and back of the check that was used to pay for the product.
final IssuingDisputeDuplicateEvidenceCheckImage? checkImage;

/// Explanation of why the cardholder is disputing this transaction.
final String? explanation;

/// Transaction (e.g., ipi_...) that the disputed transaction is a duplicate of. Of the two or more transactions that are copies of each other, this is original undisputed one.
final String? originalTransaction;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation != null) 'additional_documentation': additionalDocumentation?.toJson(),
  if (cardStatement != null) 'card_statement': cardStatement?.toJson(),
  if (cashReceipt != null) 'cash_receipt': cashReceipt?.toJson(),
  if (checkImage != null) 'check_image': checkImage?.toJson(),
  'explanation': ?explanation,
  'original_transaction': ?originalTransaction,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'card_statement', 'cash_receipt', 'check_image', 'explanation', 'original_transaction'}.contains(key)); } 
IssuingDisputeDuplicateEvidence copyWith({IssuingDisputeDuplicateEvidenceAdditionalDocumentation? Function()? additionalDocumentation, IssuingDisputeDuplicateEvidenceCardStatement? Function()? cardStatement, IssuingDisputeDuplicateEvidenceCashReceipt? Function()? cashReceipt, IssuingDisputeDuplicateEvidenceCheckImage? Function()? checkImage, String? Function()? explanation, String? Function()? originalTransaction, }) { return IssuingDisputeDuplicateEvidence(
  additionalDocumentation: additionalDocumentation != null ? additionalDocumentation() : this.additionalDocumentation,
  cardStatement: cardStatement != null ? cardStatement() : this.cardStatement,
  cashReceipt: cashReceipt != null ? cashReceipt() : this.cashReceipt,
  checkImage: checkImage != null ? checkImage() : this.checkImage,
  explanation: explanation != null ? explanation() : this.explanation,
  originalTransaction: originalTransaction != null ? originalTransaction() : this.originalTransaction,
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
