// GENERATED CODE - DO NOT MODIFY BY HAND

/// Lock all settings as Read-Only in the Dashboard, regardless of user permission. Updates may only be made via the API or Terraform for this account when enabled.
extension type const AccessIsUiReadOnly(bool value) {
factory AccessIsUiReadOnly.fromJson(bool json) => AccessIsUiReadOnly(json);

bool toJson() => value;

}
