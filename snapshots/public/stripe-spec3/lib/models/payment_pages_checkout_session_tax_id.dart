// GENERATED CODE - DO NOT MODIFY BY HAND

/// The type of the tax ID, one of `ad_nrt`, `ar_cuit`, `eu_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `cn_tin`, `co_nit`, `cr_tin`, `do_rcn`, `ec_ruc`, `eu_oss_vat`, `hr_oib`, `pe_ruc`, `ro_tin`, `rs_pib`, `sv_nit`, `uy_ruc`, `ve_rif`, `vn_tin`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `no_voec`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `pl_nip`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `li_uid`, `li_vat`, `lk_vat`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, `ke_pin`, `tr_tin`, `eg_tin`, `ph_tin`, `al_tin`, `bh_vat`, `kz_bin`, `ng_tin`, `om_vat`, `de_stn`, `ch_uid`, `tz_vat`, `uz_vat`, `uz_tin`, `md_vat`, `ma_vat`, `by_tin`, `ao_tin`, `bs_tin`, `bb_tin`, `cd_nif`, `mr_nif`, `me_pib`, `zw_tin`, `ba_tin`, `gn_nif`, `mk_vat`, `sr_fin`, `sn_ninea`, `am_tin`, `np_pan`, `tj_tin`, `ug_tin`, `zm_tin`, `kh_tin`, `aw_tin`, `az_tin`, `bd_bin`, `bj_ifu`, `et_tin`, `kg_tin`, `la_tin`, `cm_niu`, `cv_nif`, `bf_ifu`, or `unknown`
final class PaymentPagesCheckoutSessionTaxIdType {const PaymentPagesCheckoutSessionTaxIdType._(this.value);

factory PaymentPagesCheckoutSessionTaxIdType.fromJson(String json) { return switch (json) {
  'ad_nrt' => adNrt,
  'ae_trn' => aeTrn,
  'al_tin' => alTin,
  'am_tin' => amTin,
  'ao_tin' => aoTin,
  'ar_cuit' => arCuit,
  'au_abn' => auAbn,
  'au_arn' => auArn,
  'aw_tin' => awTin,
  'az_tin' => azTin,
  'ba_tin' => baTin,
  'bb_tin' => bbTin,
  'bd_bin' => bdBin,
  'bf_ifu' => bfIfu,
  'bg_uic' => bgUic,
  'bh_vat' => bhVat,
  'bj_ifu' => bjIfu,
  'bo_tin' => boTin,
  'br_cnpj' => brCnpj,
  'br_cpf' => brCpf,
  'bs_tin' => bsTin,
  'by_tin' => byTin,
  'ca_bn' => caBn,
  'ca_gst_hst' => caGstHst,
  'ca_pst_bc' => caPstBc,
  'ca_pst_mb' => caPstMb,
  'ca_pst_sk' => caPstSk,
  'ca_qst' => caQst,
  'cd_nif' => cdNif,
  'ch_uid' => chUid,
  'ch_vat' => chVat,
  'cl_tin' => clTin,
  'cm_niu' => cmNiu,
  'cn_tin' => cnTin,
  'co_nit' => coNit,
  'cr_tin' => crTin,
  'cv_nif' => cvNif,
  'de_stn' => deStn,
  'do_rcn' => doRcn,
  'ec_ruc' => ecRuc,
  'eg_tin' => egTin,
  'es_cif' => esCif,
  'et_tin' => etTin,
  'eu_oss_vat' => euOssVat,
  'eu_vat' => euVat,
  'gb_vat' => gbVat,
  'ge_vat' => geVat,
  'gn_nif' => gnNif,
  'hk_br' => hkBr,
  'hr_oib' => hrOib,
  'hu_tin' => huTin,
  'id_npwp' => idNpwp,
  'il_vat' => ilVat,
  'in_gst' => inGst,
  'is_vat' => isVat,
  'jp_cn' => jpCn,
  'jp_rn' => jpRn,
  'jp_trn' => jpTrn,
  'ke_pin' => kePin,
  'kg_tin' => kgTin,
  'kh_tin' => khTin,
  'kr_brn' => krBrn,
  'kz_bin' => kzBin,
  'la_tin' => laTin,
  'li_uid' => liUid,
  'li_vat' => liVat,
  'lk_vat' => lkVat,
  'ma_vat' => maVat,
  'md_vat' => mdVat,
  'me_pib' => mePib,
  'mk_vat' => mkVat,
  'mr_nif' => mrNif,
  'mx_rfc' => mxRfc,
  'my_frp' => myFrp,
  'my_itn' => myItn,
  'my_sst' => mySst,
  'ng_tin' => ngTin,
  'no_vat' => noVat,
  'no_voec' => noVoec,
  'np_pan' => npPan,
  'nz_gst' => nzGst,
  'om_vat' => omVat,
  'pe_ruc' => peRuc,
  'ph_tin' => phTin,
  'pl_nip' => plNip,
  'ro_tin' => roTin,
  'rs_pib' => rsPib,
  'ru_inn' => ruInn,
  'ru_kpp' => ruKpp,
  'sa_vat' => saVat,
  'sg_gst' => sgGst,
  'sg_uen' => sgUen,
  'si_tin' => siTin,
  'sn_ninea' => snNinea,
  'sr_fin' => srFin,
  'sv_nit' => svNit,
  'th_vat' => thVat,
  'tj_tin' => tjTin,
  'tr_tin' => trTin,
  'tw_vat' => twVat,
  'tz_vat' => tzVat,
  'ua_vat' => uaVat,
  'ug_tin' => ugTin,
  'unknown' => unknown,
  'us_ein' => usEin,
  'uy_ruc' => uyRuc,
  'uz_tin' => uzTin,
  'uz_vat' => uzVat,
  've_rif' => veRif,
  'vn_tin' => vnTin,
  'za_vat' => zaVat,
  'zm_tin' => zmTin,
  'zw_tin' => zwTin,
  _ => PaymentPagesCheckoutSessionTaxIdType._(json),
}; }

static const PaymentPagesCheckoutSessionTaxIdType adNrt = PaymentPagesCheckoutSessionTaxIdType._('ad_nrt');

static const PaymentPagesCheckoutSessionTaxIdType aeTrn = PaymentPagesCheckoutSessionTaxIdType._('ae_trn');

static const PaymentPagesCheckoutSessionTaxIdType alTin = PaymentPagesCheckoutSessionTaxIdType._('al_tin');

static const PaymentPagesCheckoutSessionTaxIdType amTin = PaymentPagesCheckoutSessionTaxIdType._('am_tin');

static const PaymentPagesCheckoutSessionTaxIdType aoTin = PaymentPagesCheckoutSessionTaxIdType._('ao_tin');

static const PaymentPagesCheckoutSessionTaxIdType arCuit = PaymentPagesCheckoutSessionTaxIdType._('ar_cuit');

static const PaymentPagesCheckoutSessionTaxIdType auAbn = PaymentPagesCheckoutSessionTaxIdType._('au_abn');

static const PaymentPagesCheckoutSessionTaxIdType auArn = PaymentPagesCheckoutSessionTaxIdType._('au_arn');

static const PaymentPagesCheckoutSessionTaxIdType awTin = PaymentPagesCheckoutSessionTaxIdType._('aw_tin');

static const PaymentPagesCheckoutSessionTaxIdType azTin = PaymentPagesCheckoutSessionTaxIdType._('az_tin');

static const PaymentPagesCheckoutSessionTaxIdType baTin = PaymentPagesCheckoutSessionTaxIdType._('ba_tin');

static const PaymentPagesCheckoutSessionTaxIdType bbTin = PaymentPagesCheckoutSessionTaxIdType._('bb_tin');

static const PaymentPagesCheckoutSessionTaxIdType bdBin = PaymentPagesCheckoutSessionTaxIdType._('bd_bin');

static const PaymentPagesCheckoutSessionTaxIdType bfIfu = PaymentPagesCheckoutSessionTaxIdType._('bf_ifu');

static const PaymentPagesCheckoutSessionTaxIdType bgUic = PaymentPagesCheckoutSessionTaxIdType._('bg_uic');

static const PaymentPagesCheckoutSessionTaxIdType bhVat = PaymentPagesCheckoutSessionTaxIdType._('bh_vat');

static const PaymentPagesCheckoutSessionTaxIdType bjIfu = PaymentPagesCheckoutSessionTaxIdType._('bj_ifu');

static const PaymentPagesCheckoutSessionTaxIdType boTin = PaymentPagesCheckoutSessionTaxIdType._('bo_tin');

static const PaymentPagesCheckoutSessionTaxIdType brCnpj = PaymentPagesCheckoutSessionTaxIdType._('br_cnpj');

static const PaymentPagesCheckoutSessionTaxIdType brCpf = PaymentPagesCheckoutSessionTaxIdType._('br_cpf');

static const PaymentPagesCheckoutSessionTaxIdType bsTin = PaymentPagesCheckoutSessionTaxIdType._('bs_tin');

static const PaymentPagesCheckoutSessionTaxIdType byTin = PaymentPagesCheckoutSessionTaxIdType._('by_tin');

static const PaymentPagesCheckoutSessionTaxIdType caBn = PaymentPagesCheckoutSessionTaxIdType._('ca_bn');

static const PaymentPagesCheckoutSessionTaxIdType caGstHst = PaymentPagesCheckoutSessionTaxIdType._('ca_gst_hst');

static const PaymentPagesCheckoutSessionTaxIdType caPstBc = PaymentPagesCheckoutSessionTaxIdType._('ca_pst_bc');

static const PaymentPagesCheckoutSessionTaxIdType caPstMb = PaymentPagesCheckoutSessionTaxIdType._('ca_pst_mb');

static const PaymentPagesCheckoutSessionTaxIdType caPstSk = PaymentPagesCheckoutSessionTaxIdType._('ca_pst_sk');

static const PaymentPagesCheckoutSessionTaxIdType caQst = PaymentPagesCheckoutSessionTaxIdType._('ca_qst');

static const PaymentPagesCheckoutSessionTaxIdType cdNif = PaymentPagesCheckoutSessionTaxIdType._('cd_nif');

static const PaymentPagesCheckoutSessionTaxIdType chUid = PaymentPagesCheckoutSessionTaxIdType._('ch_uid');

static const PaymentPagesCheckoutSessionTaxIdType chVat = PaymentPagesCheckoutSessionTaxIdType._('ch_vat');

static const PaymentPagesCheckoutSessionTaxIdType clTin = PaymentPagesCheckoutSessionTaxIdType._('cl_tin');

static const PaymentPagesCheckoutSessionTaxIdType cmNiu = PaymentPagesCheckoutSessionTaxIdType._('cm_niu');

static const PaymentPagesCheckoutSessionTaxIdType cnTin = PaymentPagesCheckoutSessionTaxIdType._('cn_tin');

static const PaymentPagesCheckoutSessionTaxIdType coNit = PaymentPagesCheckoutSessionTaxIdType._('co_nit');

static const PaymentPagesCheckoutSessionTaxIdType crTin = PaymentPagesCheckoutSessionTaxIdType._('cr_tin');

static const PaymentPagesCheckoutSessionTaxIdType cvNif = PaymentPagesCheckoutSessionTaxIdType._('cv_nif');

static const PaymentPagesCheckoutSessionTaxIdType deStn = PaymentPagesCheckoutSessionTaxIdType._('de_stn');

static const PaymentPagesCheckoutSessionTaxIdType doRcn = PaymentPagesCheckoutSessionTaxIdType._('do_rcn');

static const PaymentPagesCheckoutSessionTaxIdType ecRuc = PaymentPagesCheckoutSessionTaxIdType._('ec_ruc');

static const PaymentPagesCheckoutSessionTaxIdType egTin = PaymentPagesCheckoutSessionTaxIdType._('eg_tin');

static const PaymentPagesCheckoutSessionTaxIdType esCif = PaymentPagesCheckoutSessionTaxIdType._('es_cif');

static const PaymentPagesCheckoutSessionTaxIdType etTin = PaymentPagesCheckoutSessionTaxIdType._('et_tin');

static const PaymentPagesCheckoutSessionTaxIdType euOssVat = PaymentPagesCheckoutSessionTaxIdType._('eu_oss_vat');

static const PaymentPagesCheckoutSessionTaxIdType euVat = PaymentPagesCheckoutSessionTaxIdType._('eu_vat');

static const PaymentPagesCheckoutSessionTaxIdType gbVat = PaymentPagesCheckoutSessionTaxIdType._('gb_vat');

static const PaymentPagesCheckoutSessionTaxIdType geVat = PaymentPagesCheckoutSessionTaxIdType._('ge_vat');

static const PaymentPagesCheckoutSessionTaxIdType gnNif = PaymentPagesCheckoutSessionTaxIdType._('gn_nif');

static const PaymentPagesCheckoutSessionTaxIdType hkBr = PaymentPagesCheckoutSessionTaxIdType._('hk_br');

static const PaymentPagesCheckoutSessionTaxIdType hrOib = PaymentPagesCheckoutSessionTaxIdType._('hr_oib');

static const PaymentPagesCheckoutSessionTaxIdType huTin = PaymentPagesCheckoutSessionTaxIdType._('hu_tin');

static const PaymentPagesCheckoutSessionTaxIdType idNpwp = PaymentPagesCheckoutSessionTaxIdType._('id_npwp');

static const PaymentPagesCheckoutSessionTaxIdType ilVat = PaymentPagesCheckoutSessionTaxIdType._('il_vat');

static const PaymentPagesCheckoutSessionTaxIdType inGst = PaymentPagesCheckoutSessionTaxIdType._('in_gst');

static const PaymentPagesCheckoutSessionTaxIdType isVat = PaymentPagesCheckoutSessionTaxIdType._('is_vat');

static const PaymentPagesCheckoutSessionTaxIdType jpCn = PaymentPagesCheckoutSessionTaxIdType._('jp_cn');

static const PaymentPagesCheckoutSessionTaxIdType jpRn = PaymentPagesCheckoutSessionTaxIdType._('jp_rn');

static const PaymentPagesCheckoutSessionTaxIdType jpTrn = PaymentPagesCheckoutSessionTaxIdType._('jp_trn');

static const PaymentPagesCheckoutSessionTaxIdType kePin = PaymentPagesCheckoutSessionTaxIdType._('ke_pin');

static const PaymentPagesCheckoutSessionTaxIdType kgTin = PaymentPagesCheckoutSessionTaxIdType._('kg_tin');

static const PaymentPagesCheckoutSessionTaxIdType khTin = PaymentPagesCheckoutSessionTaxIdType._('kh_tin');

static const PaymentPagesCheckoutSessionTaxIdType krBrn = PaymentPagesCheckoutSessionTaxIdType._('kr_brn');

static const PaymentPagesCheckoutSessionTaxIdType kzBin = PaymentPagesCheckoutSessionTaxIdType._('kz_bin');

static const PaymentPagesCheckoutSessionTaxIdType laTin = PaymentPagesCheckoutSessionTaxIdType._('la_tin');

static const PaymentPagesCheckoutSessionTaxIdType liUid = PaymentPagesCheckoutSessionTaxIdType._('li_uid');

static const PaymentPagesCheckoutSessionTaxIdType liVat = PaymentPagesCheckoutSessionTaxIdType._('li_vat');

static const PaymentPagesCheckoutSessionTaxIdType lkVat = PaymentPagesCheckoutSessionTaxIdType._('lk_vat');

static const PaymentPagesCheckoutSessionTaxIdType maVat = PaymentPagesCheckoutSessionTaxIdType._('ma_vat');

static const PaymentPagesCheckoutSessionTaxIdType mdVat = PaymentPagesCheckoutSessionTaxIdType._('md_vat');

static const PaymentPagesCheckoutSessionTaxIdType mePib = PaymentPagesCheckoutSessionTaxIdType._('me_pib');

static const PaymentPagesCheckoutSessionTaxIdType mkVat = PaymentPagesCheckoutSessionTaxIdType._('mk_vat');

static const PaymentPagesCheckoutSessionTaxIdType mrNif = PaymentPagesCheckoutSessionTaxIdType._('mr_nif');

static const PaymentPagesCheckoutSessionTaxIdType mxRfc = PaymentPagesCheckoutSessionTaxIdType._('mx_rfc');

static const PaymentPagesCheckoutSessionTaxIdType myFrp = PaymentPagesCheckoutSessionTaxIdType._('my_frp');

static const PaymentPagesCheckoutSessionTaxIdType myItn = PaymentPagesCheckoutSessionTaxIdType._('my_itn');

static const PaymentPagesCheckoutSessionTaxIdType mySst = PaymentPagesCheckoutSessionTaxIdType._('my_sst');

static const PaymentPagesCheckoutSessionTaxIdType ngTin = PaymentPagesCheckoutSessionTaxIdType._('ng_tin');

static const PaymentPagesCheckoutSessionTaxIdType noVat = PaymentPagesCheckoutSessionTaxIdType._('no_vat');

static const PaymentPagesCheckoutSessionTaxIdType noVoec = PaymentPagesCheckoutSessionTaxIdType._('no_voec');

static const PaymentPagesCheckoutSessionTaxIdType npPan = PaymentPagesCheckoutSessionTaxIdType._('np_pan');

static const PaymentPagesCheckoutSessionTaxIdType nzGst = PaymentPagesCheckoutSessionTaxIdType._('nz_gst');

static const PaymentPagesCheckoutSessionTaxIdType omVat = PaymentPagesCheckoutSessionTaxIdType._('om_vat');

static const PaymentPagesCheckoutSessionTaxIdType peRuc = PaymentPagesCheckoutSessionTaxIdType._('pe_ruc');

static const PaymentPagesCheckoutSessionTaxIdType phTin = PaymentPagesCheckoutSessionTaxIdType._('ph_tin');

static const PaymentPagesCheckoutSessionTaxIdType plNip = PaymentPagesCheckoutSessionTaxIdType._('pl_nip');

static const PaymentPagesCheckoutSessionTaxIdType roTin = PaymentPagesCheckoutSessionTaxIdType._('ro_tin');

static const PaymentPagesCheckoutSessionTaxIdType rsPib = PaymentPagesCheckoutSessionTaxIdType._('rs_pib');

static const PaymentPagesCheckoutSessionTaxIdType ruInn = PaymentPagesCheckoutSessionTaxIdType._('ru_inn');

static const PaymentPagesCheckoutSessionTaxIdType ruKpp = PaymentPagesCheckoutSessionTaxIdType._('ru_kpp');

static const PaymentPagesCheckoutSessionTaxIdType saVat = PaymentPagesCheckoutSessionTaxIdType._('sa_vat');

static const PaymentPagesCheckoutSessionTaxIdType sgGst = PaymentPagesCheckoutSessionTaxIdType._('sg_gst');

static const PaymentPagesCheckoutSessionTaxIdType sgUen = PaymentPagesCheckoutSessionTaxIdType._('sg_uen');

static const PaymentPagesCheckoutSessionTaxIdType siTin = PaymentPagesCheckoutSessionTaxIdType._('si_tin');

static const PaymentPagesCheckoutSessionTaxIdType snNinea = PaymentPagesCheckoutSessionTaxIdType._('sn_ninea');

static const PaymentPagesCheckoutSessionTaxIdType srFin = PaymentPagesCheckoutSessionTaxIdType._('sr_fin');

static const PaymentPagesCheckoutSessionTaxIdType svNit = PaymentPagesCheckoutSessionTaxIdType._('sv_nit');

static const PaymentPagesCheckoutSessionTaxIdType thVat = PaymentPagesCheckoutSessionTaxIdType._('th_vat');

static const PaymentPagesCheckoutSessionTaxIdType tjTin = PaymentPagesCheckoutSessionTaxIdType._('tj_tin');

static const PaymentPagesCheckoutSessionTaxIdType trTin = PaymentPagesCheckoutSessionTaxIdType._('tr_tin');

static const PaymentPagesCheckoutSessionTaxIdType twVat = PaymentPagesCheckoutSessionTaxIdType._('tw_vat');

static const PaymentPagesCheckoutSessionTaxIdType tzVat = PaymentPagesCheckoutSessionTaxIdType._('tz_vat');

static const PaymentPagesCheckoutSessionTaxIdType uaVat = PaymentPagesCheckoutSessionTaxIdType._('ua_vat');

static const PaymentPagesCheckoutSessionTaxIdType ugTin = PaymentPagesCheckoutSessionTaxIdType._('ug_tin');

static const PaymentPagesCheckoutSessionTaxIdType unknown = PaymentPagesCheckoutSessionTaxIdType._('unknown');

static const PaymentPagesCheckoutSessionTaxIdType usEin = PaymentPagesCheckoutSessionTaxIdType._('us_ein');

static const PaymentPagesCheckoutSessionTaxIdType uyRuc = PaymentPagesCheckoutSessionTaxIdType._('uy_ruc');

static const PaymentPagesCheckoutSessionTaxIdType uzTin = PaymentPagesCheckoutSessionTaxIdType._('uz_tin');

static const PaymentPagesCheckoutSessionTaxIdType uzVat = PaymentPagesCheckoutSessionTaxIdType._('uz_vat');

static const PaymentPagesCheckoutSessionTaxIdType veRif = PaymentPagesCheckoutSessionTaxIdType._('ve_rif');

static const PaymentPagesCheckoutSessionTaxIdType vnTin = PaymentPagesCheckoutSessionTaxIdType._('vn_tin');

static const PaymentPagesCheckoutSessionTaxIdType zaVat = PaymentPagesCheckoutSessionTaxIdType._('za_vat');

static const PaymentPagesCheckoutSessionTaxIdType zmTin = PaymentPagesCheckoutSessionTaxIdType._('zm_tin');

static const PaymentPagesCheckoutSessionTaxIdType zwTin = PaymentPagesCheckoutSessionTaxIdType._('zw_tin');

static const List<PaymentPagesCheckoutSessionTaxIdType> values = [adNrt, aeTrn, alTin, amTin, aoTin, arCuit, auAbn, auArn, awTin, azTin, baTin, bbTin, bdBin, bfIfu, bgUic, bhVat, bjIfu, boTin, brCnpj, brCpf, bsTin, byTin, caBn, caGstHst, caPstBc, caPstMb, caPstSk, caQst, cdNif, chUid, chVat, clTin, cmNiu, cnTin, coNit, crTin, cvNif, deStn, doRcn, ecRuc, egTin, esCif, etTin, euOssVat, euVat, gbVat, geVat, gnNif, hkBr, hrOib, huTin, idNpwp, ilVat, inGst, isVat, jpCn, jpRn, jpTrn, kePin, kgTin, khTin, krBrn, kzBin, laTin, liUid, liVat, lkVat, maVat, mdVat, mePib, mkVat, mrNif, mxRfc, myFrp, myItn, mySst, ngTin, noVat, noVoec, npPan, nzGst, omVat, peRuc, phTin, plNip, roTin, rsPib, ruInn, ruKpp, saVat, sgGst, sgUen, siTin, snNinea, srFin, svNit, thVat, tjTin, trTin, twVat, tzVat, uaVat, ugTin, unknown, usEin, uyRuc, uzTin, uzVat, veRif, vnTin, zaVat, zmTin, zwTin];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentPagesCheckoutSessionTaxIdType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentPagesCheckoutSessionTaxIdType($value)'; } 
 }
/// 
final class PaymentPagesCheckoutSessionTaxId {const PaymentPagesCheckoutSessionTaxId({required this.type, this.value, });

factory PaymentPagesCheckoutSessionTaxId.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionTaxId(
  type: PaymentPagesCheckoutSessionTaxIdType.fromJson(json['type'] as String),
  value: json['value'] as String?,
); }

/// The type of the tax ID, one of `ad_nrt`, `ar_cuit`, `eu_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `cn_tin`, `co_nit`, `cr_tin`, `do_rcn`, `ec_ruc`, `eu_oss_vat`, `hr_oib`, `pe_ruc`, `ro_tin`, `rs_pib`, `sv_nit`, `uy_ruc`, `ve_rif`, `vn_tin`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `no_voec`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `pl_nip`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `li_uid`, `li_vat`, `lk_vat`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, `ke_pin`, `tr_tin`, `eg_tin`, `ph_tin`, `al_tin`, `bh_vat`, `kz_bin`, `ng_tin`, `om_vat`, `de_stn`, `ch_uid`, `tz_vat`, `uz_vat`, `uz_tin`, `md_vat`, `ma_vat`, `by_tin`, `ao_tin`, `bs_tin`, `bb_tin`, `cd_nif`, `mr_nif`, `me_pib`, `zw_tin`, `ba_tin`, `gn_nif`, `mk_vat`, `sr_fin`, `sn_ninea`, `am_tin`, `np_pan`, `tj_tin`, `ug_tin`, `zm_tin`, `kh_tin`, `aw_tin`, `az_tin`, `bd_bin`, `bj_ifu`, `et_tin`, `kg_tin`, `la_tin`, `cm_niu`, `cv_nif`, `bf_ifu`, or `unknown`
final PaymentPagesCheckoutSessionTaxIdType type;

/// The value of the tax ID.
final String? value;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PaymentPagesCheckoutSessionTaxId copyWith({PaymentPagesCheckoutSessionTaxIdType? type, String? Function()? value, }) { return PaymentPagesCheckoutSessionTaxId(
  type: type ?? this.type,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionTaxId &&
          type == other.type &&
          value == other.value; } 
@override int get hashCode { return Object.hash(type, value); } 
@override String toString() { return 'PaymentPagesCheckoutSessionTaxId(type: $type, value: $value)'; } 
 }
