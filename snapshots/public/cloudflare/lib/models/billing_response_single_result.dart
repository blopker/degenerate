// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'components_schemas_identifier.dart';@immutable final class BillingResponseSingleResult {const BillingResponseSingleResult({this.enterpriseBillingEmail, this.address, this.address2, this.balance, this.cardExpiryMonth, this.cardExpiryYear, this.cardNumber, this.city, this.company, this.country, this.createdOn, this.deviceData, this.editedOn, this.accountType, this.enterprisePrimaryEmail, this.firstName, this.id, this.isPartner, this.lastName, this.nextBillDate, this.paymentAddress, this.paymentAddress2, this.paymentCity, this.paymentCountry, this.paymentEmail, this.zipcode, this.paymentGateway, this.paymentLastName, this.paymentNonce, this.paymentState, this.paymentZipcode, this.primaryEmail, this.state, this.taxIdType, this.telephone, this.useLegacy, this.validationCode, this.vat, this.paymentFirstName, });

factory BillingResponseSingleResult.fromJson(Map<String, dynamic> json) { return BillingResponseSingleResult(
  accountType: json['account_type'] as String?,
  address: json['address'] as String?,
  address2: json['address2'] as String?,
  balance: json['balance'] as String?,
  cardExpiryMonth: json['card_expiry_month'] != null ? (json['card_expiry_month'] as num).toInt() : null,
  cardExpiryYear: json['card_expiry_year'] != null ? (json['card_expiry_year'] as num).toInt() : null,
  cardNumber: json['card_number'] as String?,
  city: json['city'] as String?,
  company: json['company'] as String?,
  country: json['country'] as String?,
  createdOn: json['created_on'] != null ? DateTime.parse(json['created_on'] as String) : null,
  deviceData: json['device_data'] as String?,
  editedOn: json['edited_on'] != null ? DateTime.parse(json['edited_on'] as String) : null,
  enterpriseBillingEmail: json['enterprise_billing_email'] as String?,
  enterprisePrimaryEmail: json['enterprise_primary_email'] as String?,
  firstName: json['first_name'] as String?,
  id: json['id'] != null ? ComponentsSchemasIdentifier.fromJson(json['id'] as String) : null,
  isPartner: json['is_partner'] as bool?,
  lastName: json['last_name'] as String?,
  nextBillDate: json['next_bill_date'] != null ? DateTime.parse(json['next_bill_date'] as String) : null,
  paymentAddress: json['payment_address'] as String?,
  paymentAddress2: json['payment_address2'] as String?,
  paymentCity: json['payment_city'] as String?,
  paymentCountry: json['payment_country'] as String?,
  paymentEmail: json['payment_email'] as String?,
  paymentFirstName: json['payment_first_name'] as String?,
  paymentGateway: json['payment_gateway'] as String?,
  paymentLastName: json['payment_last_name'] as String?,
  paymentNonce: json['payment_nonce'] as String?,
  paymentState: json['payment_state'] as String?,
  paymentZipcode: json['payment_zipcode'] as String?,
  primaryEmail: json['primary_email'] as String?,
  state: json['state'] as String?,
  taxIdType: json['tax_id_type'] as String?,
  telephone: json['telephone'] as String?,
  useLegacy: json['use_legacy'] as bool?,
  validationCode: json['validation_code'] as String?,
  vat: json['vat'] as String?,
  zipcode: json['zipcode'] as String?,
); }

final String? accountType;

final String? address;

final String? address2;

final String? balance;

final int? cardExpiryMonth;

final int? cardExpiryYear;

final String? cardNumber;

final String? city;

final String? company;

final String? country;

final DateTime? createdOn;

final String? deviceData;

final DateTime? editedOn;

final String? enterpriseBillingEmail;

final String? enterprisePrimaryEmail;

final String? firstName;

final ComponentsSchemasIdentifier? id;

final bool? isPartner;

final String? lastName;

final DateTime? nextBillDate;

final String? paymentAddress;

final String? paymentAddress2;

final String? paymentCity;

final String? paymentCountry;

final String? paymentEmail;

final String? paymentFirstName;

final String? paymentGateway;

final String? paymentLastName;

final String? paymentNonce;

final String? paymentState;

final String? paymentZipcode;

final String? primaryEmail;

final String? state;

final String? taxIdType;

final String? telephone;

final bool? useLegacy;

final String? validationCode;

final String? vat;

final String? zipcode;

Map<String, dynamic> toJson() { return {
  'account_type': ?accountType,
  'address': ?address,
  'address2': ?address2,
  'balance': ?balance,
  'card_expiry_month': ?cardExpiryMonth,
  'card_expiry_year': ?cardExpiryYear,
  'card_number': ?cardNumber,
  'city': ?city,
  'company': ?company,
  'country': ?country,
  if (createdOn != null) 'created_on': createdOn?.toIso8601String(),
  'device_data': ?deviceData,
  if (editedOn != null) 'edited_on': editedOn?.toIso8601String(),
  'enterprise_billing_email': ?enterpriseBillingEmail,
  'enterprise_primary_email': ?enterprisePrimaryEmail,
  'first_name': ?firstName,
  if (id != null) 'id': id?.toJson(),
  'is_partner': ?isPartner,
  'last_name': ?lastName,
  if (nextBillDate != null) 'next_bill_date': nextBillDate?.toIso8601String(),
  'payment_address': ?paymentAddress,
  'payment_address2': ?paymentAddress2,
  'payment_city': ?paymentCity,
  'payment_country': ?paymentCountry,
  'payment_email': ?paymentEmail,
  'payment_first_name': ?paymentFirstName,
  'payment_gateway': ?paymentGateway,
  'payment_last_name': ?paymentLastName,
  'payment_nonce': ?paymentNonce,
  'payment_state': ?paymentState,
  'payment_zipcode': ?paymentZipcode,
  'primary_email': ?primaryEmail,
  'state': ?state,
  'tax_id_type': ?taxIdType,
  'telephone': ?telephone,
  'use_legacy': ?useLegacy,
  'validation_code': ?validationCode,
  'vat': ?vat,
  'zipcode': ?zipcode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_type', 'address', 'address2', 'balance', 'card_expiry_month', 'card_expiry_year', 'card_number', 'city', 'company', 'country', 'created_on', 'device_data', 'edited_on', 'enterprise_billing_email', 'enterprise_primary_email', 'first_name', 'id', 'is_partner', 'last_name', 'next_bill_date', 'payment_address', 'payment_address2', 'payment_city', 'payment_country', 'payment_email', 'payment_first_name', 'payment_gateway', 'payment_last_name', 'payment_nonce', 'payment_state', 'payment_zipcode', 'primary_email', 'state', 'tax_id_type', 'telephone', 'use_legacy', 'validation_code', 'vat', 'zipcode'}.contains(key)); } 
BillingResponseSingleResult copyWith({String Function()? accountType, String Function()? address, String Function()? address2, String Function()? balance, int Function()? cardExpiryMonth, int Function()? cardExpiryYear, String Function()? cardNumber, String Function()? city, String Function()? company, String Function()? country, DateTime Function()? createdOn, String Function()? deviceData, DateTime Function()? editedOn, String Function()? enterpriseBillingEmail, String Function()? enterprisePrimaryEmail, String Function()? firstName, ComponentsSchemasIdentifier Function()? id, bool Function()? isPartner, String Function()? lastName, DateTime Function()? nextBillDate, String Function()? paymentAddress, String Function()? paymentAddress2, String Function()? paymentCity, String Function()? paymentCountry, String Function()? paymentEmail, String Function()? paymentFirstName, String Function()? paymentGateway, String Function()? paymentLastName, String Function()? paymentNonce, String Function()? paymentState, String Function()? paymentZipcode, String Function()? primaryEmail, String Function()? state, String Function()? taxIdType, String Function()? telephone, bool Function()? useLegacy, String Function()? validationCode, String Function()? vat, String Function()? zipcode, }) { return BillingResponseSingleResult(
  accountType: accountType != null ? accountType() : this.accountType,
  address: address != null ? address() : this.address,
  address2: address2 != null ? address2() : this.address2,
  balance: balance != null ? balance() : this.balance,
  cardExpiryMonth: cardExpiryMonth != null ? cardExpiryMonth() : this.cardExpiryMonth,
  cardExpiryYear: cardExpiryYear != null ? cardExpiryYear() : this.cardExpiryYear,
  cardNumber: cardNumber != null ? cardNumber() : this.cardNumber,
  city: city != null ? city() : this.city,
  company: company != null ? company() : this.company,
  country: country != null ? country() : this.country,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  deviceData: deviceData != null ? deviceData() : this.deviceData,
  editedOn: editedOn != null ? editedOn() : this.editedOn,
  enterpriseBillingEmail: enterpriseBillingEmail != null ? enterpriseBillingEmail() : this.enterpriseBillingEmail,
  enterprisePrimaryEmail: enterprisePrimaryEmail != null ? enterprisePrimaryEmail() : this.enterprisePrimaryEmail,
  firstName: firstName != null ? firstName() : this.firstName,
  id: id != null ? id() : this.id,
  isPartner: isPartner != null ? isPartner() : this.isPartner,
  lastName: lastName != null ? lastName() : this.lastName,
  nextBillDate: nextBillDate != null ? nextBillDate() : this.nextBillDate,
  paymentAddress: paymentAddress != null ? paymentAddress() : this.paymentAddress,
  paymentAddress2: paymentAddress2 != null ? paymentAddress2() : this.paymentAddress2,
  paymentCity: paymentCity != null ? paymentCity() : this.paymentCity,
  paymentCountry: paymentCountry != null ? paymentCountry() : this.paymentCountry,
  paymentEmail: paymentEmail != null ? paymentEmail() : this.paymentEmail,
  paymentFirstName: paymentFirstName != null ? paymentFirstName() : this.paymentFirstName,
  paymentGateway: paymentGateway != null ? paymentGateway() : this.paymentGateway,
  paymentLastName: paymentLastName != null ? paymentLastName() : this.paymentLastName,
  paymentNonce: paymentNonce != null ? paymentNonce() : this.paymentNonce,
  paymentState: paymentState != null ? paymentState() : this.paymentState,
  paymentZipcode: paymentZipcode != null ? paymentZipcode() : this.paymentZipcode,
  primaryEmail: primaryEmail != null ? primaryEmail() : this.primaryEmail,
  state: state != null ? state() : this.state,
  taxIdType: taxIdType != null ? taxIdType() : this.taxIdType,
  telephone: telephone != null ? telephone() : this.telephone,
  useLegacy: useLegacy != null ? useLegacy() : this.useLegacy,
  validationCode: validationCode != null ? validationCode() : this.validationCode,
  vat: vat != null ? vat() : this.vat,
  zipcode: zipcode != null ? zipcode() : this.zipcode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingResponseSingleResult &&
          accountType == other.accountType &&
          address == other.address &&
          address2 == other.address2 &&
          balance == other.balance &&
          cardExpiryMonth == other.cardExpiryMonth &&
          cardExpiryYear == other.cardExpiryYear &&
          cardNumber == other.cardNumber &&
          city == other.city &&
          company == other.company &&
          country == other.country &&
          createdOn == other.createdOn &&
          deviceData == other.deviceData &&
          editedOn == other.editedOn &&
          enterpriseBillingEmail == other.enterpriseBillingEmail &&
          enterprisePrimaryEmail == other.enterprisePrimaryEmail &&
          firstName == other.firstName &&
          id == other.id &&
          isPartner == other.isPartner &&
          lastName == other.lastName &&
          nextBillDate == other.nextBillDate &&
          paymentAddress == other.paymentAddress &&
          paymentAddress2 == other.paymentAddress2 &&
          paymentCity == other.paymentCity &&
          paymentCountry == other.paymentCountry &&
          paymentEmail == other.paymentEmail &&
          paymentFirstName == other.paymentFirstName &&
          paymentGateway == other.paymentGateway &&
          paymentLastName == other.paymentLastName &&
          paymentNonce == other.paymentNonce &&
          paymentState == other.paymentState &&
          paymentZipcode == other.paymentZipcode &&
          primaryEmail == other.primaryEmail &&
          state == other.state &&
          taxIdType == other.taxIdType &&
          telephone == other.telephone &&
          useLegacy == other.useLegacy &&
          validationCode == other.validationCode &&
          vat == other.vat &&
          zipcode == other.zipcode; } 
@override int get hashCode { return Object.hashAll([accountType, address, address2, balance, cardExpiryMonth, cardExpiryYear, cardNumber, city, company, country, createdOn, deviceData, editedOn, enterpriseBillingEmail, enterprisePrimaryEmail, firstName, id, isPartner, lastName, nextBillDate, paymentAddress, paymentAddress2, paymentCity, paymentCountry, paymentEmail, paymentFirstName, paymentGateway, paymentLastName, paymentNonce, paymentState, paymentZipcode, primaryEmail, state, taxIdType, telephone, useLegacy, validationCode, vat, zipcode]); } 
@override String toString() { return 'BillingResponseSingleResult(accountType: $accountType, address: $address, address2: $address2, balance: $balance, cardExpiryMonth: $cardExpiryMonth, cardExpiryYear: $cardExpiryYear, cardNumber: $cardNumber, city: $city, company: $company, country: $country, createdOn: $createdOn, deviceData: $deviceData, editedOn: $editedOn, enterpriseBillingEmail: $enterpriseBillingEmail, enterprisePrimaryEmail: $enterprisePrimaryEmail, firstName: $firstName, id: $id, isPartner: $isPartner, lastName: $lastName, nextBillDate: $nextBillDate, paymentAddress: $paymentAddress, paymentAddress2: $paymentAddress2, paymentCity: $paymentCity, paymentCountry: $paymentCountry, paymentEmail: $paymentEmail, paymentFirstName: $paymentFirstName, paymentGateway: $paymentGateway, paymentLastName: $paymentLastName, paymentNonce: $paymentNonce, paymentState: $paymentState, paymentZipcode: $paymentZipcode, primaryEmail: $primaryEmail, state: $state, taxIdType: $taxIdType, telephone: $telephone, useLegacy: $useLegacy, validationCode: $validationCode, vat: $vat, zipcode: $zipcode)'; } 
 }
