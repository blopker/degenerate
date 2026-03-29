// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoices_resource_confirmation_secret.dart';/// The confirmation secret associated with this invoice. Currently, this contains the client_secret of the PaymentIntent that Stripe creates during invoice finalization.
final class InvoiceConfirmationSecret {const InvoiceConfirmationSecret({this.invoicesResourceConfirmationSecret});

factory InvoiceConfirmationSecret.fromJson(Map<String, dynamic> json) { return InvoiceConfirmationSecret(
  invoicesResourceConfirmationSecret: InvoicesResourceConfirmationSecret.canParse(json) ? InvoicesResourceConfirmationSecret.fromJson(json) : null,
); }

final InvoicesResourceConfirmationSecret? invoicesResourceConfirmationSecret;

/// At least one variant must be present.
bool get isValid { return invoicesResourceConfirmationSecret != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoicesResourceConfirmationSecret?.toJson(),
}; } 
 }
