// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_account_sessions_request_components_account_management.dart';import 'post_account_sessions_request_components_account_onboarding.dart';import 'post_account_sessions_request_components_balances.dart';import 'post_account_sessions_request_components_disputes_list.dart';import 'post_account_sessions_request_components_documents.dart';import 'post_account_sessions_request_components_financial_account.dart';import 'post_account_sessions_request_components_financial_account_transactions.dart';import 'post_account_sessions_request_components_instant_payouts_promotion.dart';import 'post_account_sessions_request_components_issuing_card.dart';import 'post_account_sessions_request_components_issuing_cards_list.dart';import 'post_account_sessions_request_components_notification_banner.dart';import 'post_account_sessions_request_components_payment_details.dart';import 'post_account_sessions_request_components_payment_disputes.dart';import 'post_account_sessions_request_components_payments.dart';import 'post_account_sessions_request_components_payout_details.dart';import 'post_account_sessions_request_components_payouts.dart';import 'post_account_sessions_request_components_payouts_list.dart';import 'post_account_sessions_request_components_tax_registrations.dart';import 'post_account_sessions_request_components_tax_settings.dart';/// Each key of the dictionary represents an embedded component, and each embedded component maps to its configuration (e.g. whether it has been enabled or not).
@immutable final class PostAccountSessionsRequestComponents {const PostAccountSessionsRequestComponents({this.accountManagement, this.accountOnboarding, this.balances, this.disputesList, this.documents, this.financialAccount, this.financialAccountTransactions, this.instantPayoutsPromotion, this.issuingCard, this.issuingCardsList, this.notificationBanner, this.paymentDetails, this.paymentDisputes, this.payments, this.payoutDetails, this.payouts, this.payoutsList, this.taxRegistrations, this.taxSettings, });

factory PostAccountSessionsRequestComponents.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponents(
  accountManagement: json['account_management'] != null ? PostAccountSessionsRequestComponentsAccountManagement.fromJson(json['account_management'] as Map<String, dynamic>) : null,
  accountOnboarding: json['account_onboarding'] != null ? PostAccountSessionsRequestComponentsAccountOnboarding.fromJson(json['account_onboarding'] as Map<String, dynamic>) : null,
  balances: json['balances'] != null ? PostAccountSessionsRequestComponentsBalances.fromJson(json['balances'] as Map<String, dynamic>) : null,
  disputesList: json['disputes_list'] != null ? PostAccountSessionsRequestComponentsDisputesList.fromJson(json['disputes_list'] as Map<String, dynamic>) : null,
  documents: json['documents'] != null ? PostAccountSessionsRequestComponentsDocuments.fromJson(json['documents'] as Map<String, dynamic>) : null,
  financialAccount: json['financial_account'] != null ? PostAccountSessionsRequestComponentsFinancialAccount.fromJson(json['financial_account'] as Map<String, dynamic>) : null,
  financialAccountTransactions: json['financial_account_transactions'] != null ? PostAccountSessionsRequestComponentsFinancialAccountTransactions.fromJson(json['financial_account_transactions'] as Map<String, dynamic>) : null,
  instantPayoutsPromotion: json['instant_payouts_promotion'] != null ? PostAccountSessionsRequestComponentsInstantPayoutsPromotion.fromJson(json['instant_payouts_promotion'] as Map<String, dynamic>) : null,
  issuingCard: json['issuing_card'] != null ? PostAccountSessionsRequestComponentsIssuingCard.fromJson(json['issuing_card'] as Map<String, dynamic>) : null,
  issuingCardsList: json['issuing_cards_list'] != null ? PostAccountSessionsRequestComponentsIssuingCardsList.fromJson(json['issuing_cards_list'] as Map<String, dynamic>) : null,
  notificationBanner: json['notification_banner'] != null ? PostAccountSessionsRequestComponentsNotificationBanner.fromJson(json['notification_banner'] as Map<String, dynamic>) : null,
  paymentDetails: json['payment_details'] != null ? PostAccountSessionsRequestComponentsPaymentDetails.fromJson(json['payment_details'] as Map<String, dynamic>) : null,
  paymentDisputes: json['payment_disputes'] != null ? PostAccountSessionsRequestComponentsPaymentDisputes.fromJson(json['payment_disputes'] as Map<String, dynamic>) : null,
  payments: json['payments'] != null ? PostAccountSessionsRequestComponentsPayments.fromJson(json['payments'] as Map<String, dynamic>) : null,
  payoutDetails: json['payout_details'] != null ? PostAccountSessionsRequestComponentsPayoutDetails.fromJson(json['payout_details'] as Map<String, dynamic>) : null,
  payouts: json['payouts'] != null ? PostAccountSessionsRequestComponentsPayouts.fromJson(json['payouts'] as Map<String, dynamic>) : null,
  payoutsList: json['payouts_list'] != null ? PostAccountSessionsRequestComponentsPayoutsList.fromJson(json['payouts_list'] as Map<String, dynamic>) : null,
  taxRegistrations: json['tax_registrations'] != null ? PostAccountSessionsRequestComponentsTaxRegistrations.fromJson(json['tax_registrations'] as Map<String, dynamic>) : null,
  taxSettings: json['tax_settings'] != null ? PostAccountSessionsRequestComponentsTaxSettings.fromJson(json['tax_settings'] as Map<String, dynamic>) : null,
); }

final PostAccountSessionsRequestComponentsAccountManagement? accountManagement;

final PostAccountSessionsRequestComponentsAccountOnboarding? accountOnboarding;

final PostAccountSessionsRequestComponentsBalances? balances;

final PostAccountSessionsRequestComponentsDisputesList? disputesList;

final PostAccountSessionsRequestComponentsDocuments? documents;

final PostAccountSessionsRequestComponentsFinancialAccount? financialAccount;

final PostAccountSessionsRequestComponentsFinancialAccountTransactions? financialAccountTransactions;

final PostAccountSessionsRequestComponentsInstantPayoutsPromotion? instantPayoutsPromotion;

final PostAccountSessionsRequestComponentsIssuingCard? issuingCard;

final PostAccountSessionsRequestComponentsIssuingCardsList? issuingCardsList;

final PostAccountSessionsRequestComponentsNotificationBanner? notificationBanner;

final PostAccountSessionsRequestComponentsPaymentDetails? paymentDetails;

final PostAccountSessionsRequestComponentsPaymentDisputes? paymentDisputes;

final PostAccountSessionsRequestComponentsPayments? payments;

final PostAccountSessionsRequestComponentsPayoutDetails? payoutDetails;

final PostAccountSessionsRequestComponentsPayouts? payouts;

final PostAccountSessionsRequestComponentsPayoutsList? payoutsList;

final PostAccountSessionsRequestComponentsTaxRegistrations? taxRegistrations;

final PostAccountSessionsRequestComponentsTaxSettings? taxSettings;

Map<String, dynamic> toJson() { return {
  if (accountManagement != null) 'account_management': accountManagement?.toJson(),
  if (accountOnboarding != null) 'account_onboarding': accountOnboarding?.toJson(),
  if (balances != null) 'balances': balances?.toJson(),
  if (disputesList != null) 'disputes_list': disputesList?.toJson(),
  if (documents != null) 'documents': documents?.toJson(),
  if (financialAccount != null) 'financial_account': financialAccount?.toJson(),
  if (financialAccountTransactions != null) 'financial_account_transactions': financialAccountTransactions?.toJson(),
  if (instantPayoutsPromotion != null) 'instant_payouts_promotion': instantPayoutsPromotion?.toJson(),
  if (issuingCard != null) 'issuing_card': issuingCard?.toJson(),
  if (issuingCardsList != null) 'issuing_cards_list': issuingCardsList?.toJson(),
  if (notificationBanner != null) 'notification_banner': notificationBanner?.toJson(),
  if (paymentDetails != null) 'payment_details': paymentDetails?.toJson(),
  if (paymentDisputes != null) 'payment_disputes': paymentDisputes?.toJson(),
  if (payments != null) 'payments': payments?.toJson(),
  if (payoutDetails != null) 'payout_details': payoutDetails?.toJson(),
  if (payouts != null) 'payouts': payouts?.toJson(),
  if (payoutsList != null) 'payouts_list': payoutsList?.toJson(),
  if (taxRegistrations != null) 'tax_registrations': taxRegistrations?.toJson(),
  if (taxSettings != null) 'tax_settings': taxSettings?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_management', 'account_onboarding', 'balances', 'disputes_list', 'documents', 'financial_account', 'financial_account_transactions', 'instant_payouts_promotion', 'issuing_card', 'issuing_cards_list', 'notification_banner', 'payment_details', 'payment_disputes', 'payments', 'payout_details', 'payouts', 'payouts_list', 'tax_registrations', 'tax_settings'}.contains(key)); } 
PostAccountSessionsRequestComponents copyWith({PostAccountSessionsRequestComponentsAccountManagement Function()? accountManagement, PostAccountSessionsRequestComponentsAccountOnboarding Function()? accountOnboarding, PostAccountSessionsRequestComponentsBalances Function()? balances, PostAccountSessionsRequestComponentsDisputesList Function()? disputesList, PostAccountSessionsRequestComponentsDocuments Function()? documents, PostAccountSessionsRequestComponentsFinancialAccount Function()? financialAccount, PostAccountSessionsRequestComponentsFinancialAccountTransactions Function()? financialAccountTransactions, PostAccountSessionsRequestComponentsInstantPayoutsPromotion Function()? instantPayoutsPromotion, PostAccountSessionsRequestComponentsIssuingCard Function()? issuingCard, PostAccountSessionsRequestComponentsIssuingCardsList Function()? issuingCardsList, PostAccountSessionsRequestComponentsNotificationBanner Function()? notificationBanner, PostAccountSessionsRequestComponentsPaymentDetails Function()? paymentDetails, PostAccountSessionsRequestComponentsPaymentDisputes Function()? paymentDisputes, PostAccountSessionsRequestComponentsPayments Function()? payments, PostAccountSessionsRequestComponentsPayoutDetails Function()? payoutDetails, PostAccountSessionsRequestComponentsPayouts Function()? payouts, PostAccountSessionsRequestComponentsPayoutsList Function()? payoutsList, PostAccountSessionsRequestComponentsTaxRegistrations Function()? taxRegistrations, PostAccountSessionsRequestComponentsTaxSettings Function()? taxSettings, }) { return PostAccountSessionsRequestComponents(
  accountManagement: accountManagement != null ? accountManagement() : this.accountManagement,
  accountOnboarding: accountOnboarding != null ? accountOnboarding() : this.accountOnboarding,
  balances: balances != null ? balances() : this.balances,
  disputesList: disputesList != null ? disputesList() : this.disputesList,
  documents: documents != null ? documents() : this.documents,
  financialAccount: financialAccount != null ? financialAccount() : this.financialAccount,
  financialAccountTransactions: financialAccountTransactions != null ? financialAccountTransactions() : this.financialAccountTransactions,
  instantPayoutsPromotion: instantPayoutsPromotion != null ? instantPayoutsPromotion() : this.instantPayoutsPromotion,
  issuingCard: issuingCard != null ? issuingCard() : this.issuingCard,
  issuingCardsList: issuingCardsList != null ? issuingCardsList() : this.issuingCardsList,
  notificationBanner: notificationBanner != null ? notificationBanner() : this.notificationBanner,
  paymentDetails: paymentDetails != null ? paymentDetails() : this.paymentDetails,
  paymentDisputes: paymentDisputes != null ? paymentDisputes() : this.paymentDisputes,
  payments: payments != null ? payments() : this.payments,
  payoutDetails: payoutDetails != null ? payoutDetails() : this.payoutDetails,
  payouts: payouts != null ? payouts() : this.payouts,
  payoutsList: payoutsList != null ? payoutsList() : this.payoutsList,
  taxRegistrations: taxRegistrations != null ? taxRegistrations() : this.taxRegistrations,
  taxSettings: taxSettings != null ? taxSettings() : this.taxSettings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponents &&
          accountManagement == other.accountManagement &&
          accountOnboarding == other.accountOnboarding &&
          balances == other.balances &&
          disputesList == other.disputesList &&
          documents == other.documents &&
          financialAccount == other.financialAccount &&
          financialAccountTransactions == other.financialAccountTransactions &&
          instantPayoutsPromotion == other.instantPayoutsPromotion &&
          issuingCard == other.issuingCard &&
          issuingCardsList == other.issuingCardsList &&
          notificationBanner == other.notificationBanner &&
          paymentDetails == other.paymentDetails &&
          paymentDisputes == other.paymentDisputes &&
          payments == other.payments &&
          payoutDetails == other.payoutDetails &&
          payouts == other.payouts &&
          payoutsList == other.payoutsList &&
          taxRegistrations == other.taxRegistrations &&
          taxSettings == other.taxSettings; } 
@override int get hashCode { return Object.hash(accountManagement, accountOnboarding, balances, disputesList, documents, financialAccount, financialAccountTransactions, instantPayoutsPromotion, issuingCard, issuingCardsList, notificationBanner, paymentDetails, paymentDisputes, payments, payoutDetails, payouts, payoutsList, taxRegistrations, taxSettings); } 
@override String toString() { return 'PostAccountSessionsRequestComponents(accountManagement: $accountManagement, accountOnboarding: $accountOnboarding, balances: $balances, disputesList: $disputesList, documents: $documents, financialAccount: $financialAccount, financialAccountTransactions: $financialAccountTransactions, instantPayoutsPromotion: $instantPayoutsPromotion, issuingCard: $issuingCard, issuingCardsList: $issuingCardsList, notificationBanner: $notificationBanner, paymentDetails: $paymentDetails, paymentDisputes: $paymentDisputes, payments: $payments, payoutDetails: $payoutDetails, payouts: $payouts, payoutsList: $payoutsList, taxRegistrations: $taxRegistrations, taxSettings: $taxSettings)'; } 
 }
