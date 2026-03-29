// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `aw_tin`, `az_tin`, `ba_tin`, `bb_tin`, `bd_bin`, `bf_ifu`, `bg_uic`, `bh_vat`, `bj_ifu`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cm_niu`, `cn_tin`, `co_nit`, `cr_tin`, `cv_nif`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `et_tin`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kg_tin`, `kh_tin`, `kr_brn`, `kz_bin`, `la_tin`, `li_uid`, `li_vat`, `lk_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `pl_nip`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
final class PostCustomersCustomerTaxIdsRequestType {const PostCustomersCustomerTaxIdsRequestType._(this.value);

factory PostCustomersCustomerTaxIdsRequestType.fromJson(String json) { return switch (json) {
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
  'us_ein' => usEin,
  'uy_ruc' => uyRuc,
  'uz_tin' => uzTin,
  'uz_vat' => uzVat,
  've_rif' => veRif,
  'vn_tin' => vnTin,
  'za_vat' => zaVat,
  'zm_tin' => zmTin,
  'zw_tin' => zwTin,
  _ => PostCustomersCustomerTaxIdsRequestType._(json),
}; }

static const PostCustomersCustomerTaxIdsRequestType adNrt = PostCustomersCustomerTaxIdsRequestType._('ad_nrt');

static const PostCustomersCustomerTaxIdsRequestType aeTrn = PostCustomersCustomerTaxIdsRequestType._('ae_trn');

static const PostCustomersCustomerTaxIdsRequestType alTin = PostCustomersCustomerTaxIdsRequestType._('al_tin');

static const PostCustomersCustomerTaxIdsRequestType amTin = PostCustomersCustomerTaxIdsRequestType._('am_tin');

static const PostCustomersCustomerTaxIdsRequestType aoTin = PostCustomersCustomerTaxIdsRequestType._('ao_tin');

static const PostCustomersCustomerTaxIdsRequestType arCuit = PostCustomersCustomerTaxIdsRequestType._('ar_cuit');

static const PostCustomersCustomerTaxIdsRequestType auAbn = PostCustomersCustomerTaxIdsRequestType._('au_abn');

static const PostCustomersCustomerTaxIdsRequestType auArn = PostCustomersCustomerTaxIdsRequestType._('au_arn');

static const PostCustomersCustomerTaxIdsRequestType awTin = PostCustomersCustomerTaxIdsRequestType._('aw_tin');

static const PostCustomersCustomerTaxIdsRequestType azTin = PostCustomersCustomerTaxIdsRequestType._('az_tin');

static const PostCustomersCustomerTaxIdsRequestType baTin = PostCustomersCustomerTaxIdsRequestType._('ba_tin');

static const PostCustomersCustomerTaxIdsRequestType bbTin = PostCustomersCustomerTaxIdsRequestType._('bb_tin');

static const PostCustomersCustomerTaxIdsRequestType bdBin = PostCustomersCustomerTaxIdsRequestType._('bd_bin');

static const PostCustomersCustomerTaxIdsRequestType bfIfu = PostCustomersCustomerTaxIdsRequestType._('bf_ifu');

static const PostCustomersCustomerTaxIdsRequestType bgUic = PostCustomersCustomerTaxIdsRequestType._('bg_uic');

static const PostCustomersCustomerTaxIdsRequestType bhVat = PostCustomersCustomerTaxIdsRequestType._('bh_vat');

static const PostCustomersCustomerTaxIdsRequestType bjIfu = PostCustomersCustomerTaxIdsRequestType._('bj_ifu');

static const PostCustomersCustomerTaxIdsRequestType boTin = PostCustomersCustomerTaxIdsRequestType._('bo_tin');

static const PostCustomersCustomerTaxIdsRequestType brCnpj = PostCustomersCustomerTaxIdsRequestType._('br_cnpj');

static const PostCustomersCustomerTaxIdsRequestType brCpf = PostCustomersCustomerTaxIdsRequestType._('br_cpf');

static const PostCustomersCustomerTaxIdsRequestType bsTin = PostCustomersCustomerTaxIdsRequestType._('bs_tin');

static const PostCustomersCustomerTaxIdsRequestType byTin = PostCustomersCustomerTaxIdsRequestType._('by_tin');

static const PostCustomersCustomerTaxIdsRequestType caBn = PostCustomersCustomerTaxIdsRequestType._('ca_bn');

static const PostCustomersCustomerTaxIdsRequestType caGstHst = PostCustomersCustomerTaxIdsRequestType._('ca_gst_hst');

static const PostCustomersCustomerTaxIdsRequestType caPstBc = PostCustomersCustomerTaxIdsRequestType._('ca_pst_bc');

static const PostCustomersCustomerTaxIdsRequestType caPstMb = PostCustomersCustomerTaxIdsRequestType._('ca_pst_mb');

static const PostCustomersCustomerTaxIdsRequestType caPstSk = PostCustomersCustomerTaxIdsRequestType._('ca_pst_sk');

static const PostCustomersCustomerTaxIdsRequestType caQst = PostCustomersCustomerTaxIdsRequestType._('ca_qst');

static const PostCustomersCustomerTaxIdsRequestType cdNif = PostCustomersCustomerTaxIdsRequestType._('cd_nif');

static const PostCustomersCustomerTaxIdsRequestType chUid = PostCustomersCustomerTaxIdsRequestType._('ch_uid');

static const PostCustomersCustomerTaxIdsRequestType chVat = PostCustomersCustomerTaxIdsRequestType._('ch_vat');

static const PostCustomersCustomerTaxIdsRequestType clTin = PostCustomersCustomerTaxIdsRequestType._('cl_tin');

static const PostCustomersCustomerTaxIdsRequestType cmNiu = PostCustomersCustomerTaxIdsRequestType._('cm_niu');

static const PostCustomersCustomerTaxIdsRequestType cnTin = PostCustomersCustomerTaxIdsRequestType._('cn_tin');

static const PostCustomersCustomerTaxIdsRequestType coNit = PostCustomersCustomerTaxIdsRequestType._('co_nit');

static const PostCustomersCustomerTaxIdsRequestType crTin = PostCustomersCustomerTaxIdsRequestType._('cr_tin');

static const PostCustomersCustomerTaxIdsRequestType cvNif = PostCustomersCustomerTaxIdsRequestType._('cv_nif');

static const PostCustomersCustomerTaxIdsRequestType deStn = PostCustomersCustomerTaxIdsRequestType._('de_stn');

static const PostCustomersCustomerTaxIdsRequestType doRcn = PostCustomersCustomerTaxIdsRequestType._('do_rcn');

static const PostCustomersCustomerTaxIdsRequestType ecRuc = PostCustomersCustomerTaxIdsRequestType._('ec_ruc');

static const PostCustomersCustomerTaxIdsRequestType egTin = PostCustomersCustomerTaxIdsRequestType._('eg_tin');

static const PostCustomersCustomerTaxIdsRequestType esCif = PostCustomersCustomerTaxIdsRequestType._('es_cif');

static const PostCustomersCustomerTaxIdsRequestType etTin = PostCustomersCustomerTaxIdsRequestType._('et_tin');

static const PostCustomersCustomerTaxIdsRequestType euOssVat = PostCustomersCustomerTaxIdsRequestType._('eu_oss_vat');

static const PostCustomersCustomerTaxIdsRequestType euVat = PostCustomersCustomerTaxIdsRequestType._('eu_vat');

static const PostCustomersCustomerTaxIdsRequestType gbVat = PostCustomersCustomerTaxIdsRequestType._('gb_vat');

static const PostCustomersCustomerTaxIdsRequestType geVat = PostCustomersCustomerTaxIdsRequestType._('ge_vat');

static const PostCustomersCustomerTaxIdsRequestType gnNif = PostCustomersCustomerTaxIdsRequestType._('gn_nif');

static const PostCustomersCustomerTaxIdsRequestType hkBr = PostCustomersCustomerTaxIdsRequestType._('hk_br');

static const PostCustomersCustomerTaxIdsRequestType hrOib = PostCustomersCustomerTaxIdsRequestType._('hr_oib');

static const PostCustomersCustomerTaxIdsRequestType huTin = PostCustomersCustomerTaxIdsRequestType._('hu_tin');

static const PostCustomersCustomerTaxIdsRequestType idNpwp = PostCustomersCustomerTaxIdsRequestType._('id_npwp');

static const PostCustomersCustomerTaxIdsRequestType ilVat = PostCustomersCustomerTaxIdsRequestType._('il_vat');

static const PostCustomersCustomerTaxIdsRequestType inGst = PostCustomersCustomerTaxIdsRequestType._('in_gst');

static const PostCustomersCustomerTaxIdsRequestType isVat = PostCustomersCustomerTaxIdsRequestType._('is_vat');

static const PostCustomersCustomerTaxIdsRequestType jpCn = PostCustomersCustomerTaxIdsRequestType._('jp_cn');

static const PostCustomersCustomerTaxIdsRequestType jpRn = PostCustomersCustomerTaxIdsRequestType._('jp_rn');

static const PostCustomersCustomerTaxIdsRequestType jpTrn = PostCustomersCustomerTaxIdsRequestType._('jp_trn');

static const PostCustomersCustomerTaxIdsRequestType kePin = PostCustomersCustomerTaxIdsRequestType._('ke_pin');

static const PostCustomersCustomerTaxIdsRequestType kgTin = PostCustomersCustomerTaxIdsRequestType._('kg_tin');

static const PostCustomersCustomerTaxIdsRequestType khTin = PostCustomersCustomerTaxIdsRequestType._('kh_tin');

static const PostCustomersCustomerTaxIdsRequestType krBrn = PostCustomersCustomerTaxIdsRequestType._('kr_brn');

static const PostCustomersCustomerTaxIdsRequestType kzBin = PostCustomersCustomerTaxIdsRequestType._('kz_bin');

static const PostCustomersCustomerTaxIdsRequestType laTin = PostCustomersCustomerTaxIdsRequestType._('la_tin');

static const PostCustomersCustomerTaxIdsRequestType liUid = PostCustomersCustomerTaxIdsRequestType._('li_uid');

static const PostCustomersCustomerTaxIdsRequestType liVat = PostCustomersCustomerTaxIdsRequestType._('li_vat');

static const PostCustomersCustomerTaxIdsRequestType lkVat = PostCustomersCustomerTaxIdsRequestType._('lk_vat');

static const PostCustomersCustomerTaxIdsRequestType maVat = PostCustomersCustomerTaxIdsRequestType._('ma_vat');

static const PostCustomersCustomerTaxIdsRequestType mdVat = PostCustomersCustomerTaxIdsRequestType._('md_vat');

static const PostCustomersCustomerTaxIdsRequestType mePib = PostCustomersCustomerTaxIdsRequestType._('me_pib');

static const PostCustomersCustomerTaxIdsRequestType mkVat = PostCustomersCustomerTaxIdsRequestType._('mk_vat');

static const PostCustomersCustomerTaxIdsRequestType mrNif = PostCustomersCustomerTaxIdsRequestType._('mr_nif');

static const PostCustomersCustomerTaxIdsRequestType mxRfc = PostCustomersCustomerTaxIdsRequestType._('mx_rfc');

static const PostCustomersCustomerTaxIdsRequestType myFrp = PostCustomersCustomerTaxIdsRequestType._('my_frp');

static const PostCustomersCustomerTaxIdsRequestType myItn = PostCustomersCustomerTaxIdsRequestType._('my_itn');

static const PostCustomersCustomerTaxIdsRequestType mySst = PostCustomersCustomerTaxIdsRequestType._('my_sst');

static const PostCustomersCustomerTaxIdsRequestType ngTin = PostCustomersCustomerTaxIdsRequestType._('ng_tin');

static const PostCustomersCustomerTaxIdsRequestType noVat = PostCustomersCustomerTaxIdsRequestType._('no_vat');

static const PostCustomersCustomerTaxIdsRequestType noVoec = PostCustomersCustomerTaxIdsRequestType._('no_voec');

static const PostCustomersCustomerTaxIdsRequestType npPan = PostCustomersCustomerTaxIdsRequestType._('np_pan');

static const PostCustomersCustomerTaxIdsRequestType nzGst = PostCustomersCustomerTaxIdsRequestType._('nz_gst');

static const PostCustomersCustomerTaxIdsRequestType omVat = PostCustomersCustomerTaxIdsRequestType._('om_vat');

static const PostCustomersCustomerTaxIdsRequestType peRuc = PostCustomersCustomerTaxIdsRequestType._('pe_ruc');

static const PostCustomersCustomerTaxIdsRequestType phTin = PostCustomersCustomerTaxIdsRequestType._('ph_tin');

static const PostCustomersCustomerTaxIdsRequestType plNip = PostCustomersCustomerTaxIdsRequestType._('pl_nip');

static const PostCustomersCustomerTaxIdsRequestType roTin = PostCustomersCustomerTaxIdsRequestType._('ro_tin');

static const PostCustomersCustomerTaxIdsRequestType rsPib = PostCustomersCustomerTaxIdsRequestType._('rs_pib');

static const PostCustomersCustomerTaxIdsRequestType ruInn = PostCustomersCustomerTaxIdsRequestType._('ru_inn');

static const PostCustomersCustomerTaxIdsRequestType ruKpp = PostCustomersCustomerTaxIdsRequestType._('ru_kpp');

static const PostCustomersCustomerTaxIdsRequestType saVat = PostCustomersCustomerTaxIdsRequestType._('sa_vat');

static const PostCustomersCustomerTaxIdsRequestType sgGst = PostCustomersCustomerTaxIdsRequestType._('sg_gst');

static const PostCustomersCustomerTaxIdsRequestType sgUen = PostCustomersCustomerTaxIdsRequestType._('sg_uen');

static const PostCustomersCustomerTaxIdsRequestType siTin = PostCustomersCustomerTaxIdsRequestType._('si_tin');

static const PostCustomersCustomerTaxIdsRequestType snNinea = PostCustomersCustomerTaxIdsRequestType._('sn_ninea');

static const PostCustomersCustomerTaxIdsRequestType srFin = PostCustomersCustomerTaxIdsRequestType._('sr_fin');

static const PostCustomersCustomerTaxIdsRequestType svNit = PostCustomersCustomerTaxIdsRequestType._('sv_nit');

static const PostCustomersCustomerTaxIdsRequestType thVat = PostCustomersCustomerTaxIdsRequestType._('th_vat');

static const PostCustomersCustomerTaxIdsRequestType tjTin = PostCustomersCustomerTaxIdsRequestType._('tj_tin');

static const PostCustomersCustomerTaxIdsRequestType trTin = PostCustomersCustomerTaxIdsRequestType._('tr_tin');

static const PostCustomersCustomerTaxIdsRequestType twVat = PostCustomersCustomerTaxIdsRequestType._('tw_vat');

static const PostCustomersCustomerTaxIdsRequestType tzVat = PostCustomersCustomerTaxIdsRequestType._('tz_vat');

static const PostCustomersCustomerTaxIdsRequestType uaVat = PostCustomersCustomerTaxIdsRequestType._('ua_vat');

static const PostCustomersCustomerTaxIdsRequestType ugTin = PostCustomersCustomerTaxIdsRequestType._('ug_tin');

static const PostCustomersCustomerTaxIdsRequestType usEin = PostCustomersCustomerTaxIdsRequestType._('us_ein');

static const PostCustomersCustomerTaxIdsRequestType uyRuc = PostCustomersCustomerTaxIdsRequestType._('uy_ruc');

static const PostCustomersCustomerTaxIdsRequestType uzTin = PostCustomersCustomerTaxIdsRequestType._('uz_tin');

static const PostCustomersCustomerTaxIdsRequestType uzVat = PostCustomersCustomerTaxIdsRequestType._('uz_vat');

static const PostCustomersCustomerTaxIdsRequestType veRif = PostCustomersCustomerTaxIdsRequestType._('ve_rif');

static const PostCustomersCustomerTaxIdsRequestType vnTin = PostCustomersCustomerTaxIdsRequestType._('vn_tin');

static const PostCustomersCustomerTaxIdsRequestType zaVat = PostCustomersCustomerTaxIdsRequestType._('za_vat');

static const PostCustomersCustomerTaxIdsRequestType zmTin = PostCustomersCustomerTaxIdsRequestType._('zm_tin');

static const PostCustomersCustomerTaxIdsRequestType zwTin = PostCustomersCustomerTaxIdsRequestType._('zw_tin');

static const List<PostCustomersCustomerTaxIdsRequestType> values = [adNrt, aeTrn, alTin, amTin, aoTin, arCuit, auAbn, auArn, awTin, azTin, baTin, bbTin, bdBin, bfIfu, bgUic, bhVat, bjIfu, boTin, brCnpj, brCpf, bsTin, byTin, caBn, caGstHst, caPstBc, caPstMb, caPstSk, caQst, cdNif, chUid, chVat, clTin, cmNiu, cnTin, coNit, crTin, cvNif, deStn, doRcn, ecRuc, egTin, esCif, etTin, euOssVat, euVat, gbVat, geVat, gnNif, hkBr, hrOib, huTin, idNpwp, ilVat, inGst, isVat, jpCn, jpRn, jpTrn, kePin, kgTin, khTin, krBrn, kzBin, laTin, liUid, liVat, lkVat, maVat, mdVat, mePib, mkVat, mrNif, mxRfc, myFrp, myItn, mySst, ngTin, noVat, noVoec, npPan, nzGst, omVat, peRuc, phTin, plNip, roTin, rsPib, ruInn, ruKpp, saVat, sgGst, sgUen, siTin, snNinea, srFin, svNit, thVat, tjTin, trTin, twVat, tzVat, uaVat, ugTin, usEin, uyRuc, uzTin, uzVat, veRif, vnTin, zaVat, zmTin, zwTin];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerTaxIdsRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerTaxIdsRequestType($value)'; } 
 }
final class PostCustomersCustomerTaxIdsRequest {const PostCustomersCustomerTaxIdsRequest({this.expand, required this.type, required this.value, });

factory PostCustomersCustomerTaxIdsRequest.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerTaxIdsRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  type: PostCustomersCustomerTaxIdsRequestType.fromJson(json['type'] as String),
  value: json['value'] as String,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `aw_tin`, `az_tin`, `ba_tin`, `bb_tin`, `bd_bin`, `bf_ifu`, `bg_uic`, `bh_vat`, `bj_ifu`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cm_niu`, `cn_tin`, `co_nit`, `cr_tin`, `cv_nif`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `et_tin`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kg_tin`, `kh_tin`, `kr_brn`, `kz_bin`, `la_tin`, `li_uid`, `li_vat`, `lk_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `pl_nip`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
final PostCustomersCustomerTaxIdsRequestType type;

/// Value of the tax ID.
final String value;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'type': type.toJson(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('value') && json['value'] is String; } 
PostCustomersCustomerTaxIdsRequest copyWith({List<String> Function()? expand, PostCustomersCustomerTaxIdsRequestType? type, String? value, }) { return PostCustomersCustomerTaxIdsRequest(
  expand: expand != null ? expand() : this.expand,
  type: type ?? this.type,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerTaxIdsRequest &&
          listEquals(expand, other.expand) &&
          type == other.type &&
          value == other.value; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), type, value); } 
@override String toString() { return 'PostCustomersCustomerTaxIdsRequest(expand: $expand, type: $type, value: $value)'; } 
 }
