// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'duplicate2_additional_documentation.dart';import 'duplicate2_card_statement.dart';import 'duplicate2_cash_receipt.dart';import 'duplicate2_check_image.dart';import 'duplicate2_explanation.dart';@immutable final class Duplicate2 {const Duplicate2({this.additionalDocumentation, this.cardStatement, this.cashReceipt, this.checkImage, this.explanation, this.originalTransaction, });

factory Duplicate2.fromJson(Map<String, dynamic> json) { return Duplicate2(
  additionalDocumentation: json['additional_documentation'] != null ? Duplicate2AdditionalDocumentation.fromJson(json['additional_documentation']) : null,
  cardStatement: json['card_statement'] != null ? Duplicate2CardStatement.fromJson(json['card_statement']) : null,
  cashReceipt: json['cash_receipt'] != null ? Duplicate2CashReceipt.fromJson(json['cash_receipt']) : null,
  checkImage: json['check_image'] != null ? Duplicate2CheckImage.fromJson(json['check_image']) : null,
  explanation: json['explanation'] != null ? Duplicate2Explanation.fromJson(json['explanation']) : null,
  originalTransaction: json['original_transaction'] as String?,
); }

final Duplicate2AdditionalDocumentation? additionalDocumentation;

final Duplicate2CardStatement? cardStatement;

final Duplicate2CashReceipt? cashReceipt;

final Duplicate2CheckImage? checkImage;

final Duplicate2Explanation? explanation;

final String? originalTransaction;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation != null) 'additional_documentation': additionalDocumentation?.toJson(),
  if (cardStatement != null) 'card_statement': cardStatement?.toJson(),
  if (cashReceipt != null) 'cash_receipt': cashReceipt?.toJson(),
  if (checkImage != null) 'check_image': checkImage?.toJson(),
  if (explanation != null) 'explanation': explanation?.toJson(),
  'original_transaction': ?originalTransaction,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'card_statement', 'cash_receipt', 'check_image', 'explanation', 'original_transaction'}.contains(key)); } 
Duplicate2 copyWith({Duplicate2AdditionalDocumentation? Function()? additionalDocumentation, Duplicate2CardStatement? Function()? cardStatement, Duplicate2CashReceipt? Function()? cashReceipt, Duplicate2CheckImage? Function()? checkImage, Duplicate2Explanation? Function()? explanation, String? Function()? originalTransaction, }) { return Duplicate2(
  additionalDocumentation: additionalDocumentation != null ? additionalDocumentation() : this.additionalDocumentation,
  cardStatement: cardStatement != null ? cardStatement() : this.cardStatement,
  cashReceipt: cashReceipt != null ? cashReceipt() : this.cashReceipt,
  checkImage: checkImage != null ? checkImage() : this.checkImage,
  explanation: explanation != null ? explanation() : this.explanation,
  originalTransaction: originalTransaction != null ? originalTransaction() : this.originalTransaction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Duplicate2 &&
          additionalDocumentation == other.additionalDocumentation &&
          cardStatement == other.cardStatement &&
          cashReceipt == other.cashReceipt &&
          checkImage == other.checkImage &&
          explanation == other.explanation &&
          originalTransaction == other.originalTransaction; } 
@override int get hashCode { return Object.hash(additionalDocumentation, cardStatement, cashReceipt, checkImage, explanation, originalTransaction); } 
@override String toString() { return 'Duplicate2(additionalDocumentation: $additionalDocumentation, cardStatement: $cardStatement, cashReceipt: $cashReceipt, checkImage: $checkImage, explanation: $explanation, originalTransaction: $originalTransaction)'; } 
 }
