/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: dead_code, unnecessary_type_check

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:oneshot_client/src/protocol/access_control/role_permission.dart'
    as _ih25lxcw;
import 'package:oneshot_client/src/protocol/access_control/security_role.dart'
    as _iz410fgy;
import 'package:oneshot_client/src/protocol/common/accessory.dart' as _i5j6rswi;
import 'package:oneshot_client/src/protocol/common/document.dart' as _i0b5zr2s;
import 'package:oneshot_client/src/protocol/common/supply_stock.dart'
    as _i39d40wj;
import 'package:oneshot_client/src/protocol/common/user_profile.dart'
    as _itg25mst;
import 'package:oneshot_client/src/protocol/company/company.dart' as _i3sd1a32;
import 'package:oneshot_client/src/protocol/company/membership.dart'
    as _id04q892;
import 'package:oneshot_client/src/protocol/company/range_visit.dart'
    as _iw6oqvjt;
import 'package:oneshot_client/src/protocol/finance/bank.dart' as _iu4e25gm;
import 'package:oneshot_client/src/protocol/finance/bank_account.dart'
    as _i0k9g66j;
import 'package:oneshot_client/src/protocol/finance/financial_entry.dart'
    as _i73s6949;
import 'package:oneshot_client/src/protocol/finance/invoice.dart' as _ipuzw8nn;
import 'package:oneshot_client/src/protocol/finance/invoice_item.dart'
    as _iakdg9xr;
import 'package:oneshot_client/src/protocol/finance/payment.dart' as _ie2ol2q9;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith.dart'
    as _i36mig6d;
import 'package:oneshot_client/src/protocol/gunsmith/gunsmith_client.dart'
    as _is59bod2;
import 'package:oneshot_client/src/protocol/gunsmith/service_order.dart'
    as _imab12od;
import 'package:oneshot_client/src/protocol/gunsmith/service_order_item.dart'
    as _ifcud9hx;
import 'package:oneshot_client/src/protocol/product/product.dart' as _i2pthzti;
import 'package:oneshot_client/src/protocol/product/product_group.dart'
    as _io32npgw;
import 'package:oneshot_client/src/protocol/shooter/ammunition_stock.dart'
    as _ig3cbd8p;
import 'package:oneshot_client/src/protocol/shooter/firearm.dart' as _io8jidll;
import 'package:oneshot_client/src/protocol/shooter/reload_session.dart'
    as _i6yaeg3x;
import 'package:oneshot_client/src/protocol/shooter/reload_test.dart'
    as _ifmg7iki;
import 'package:oneshot_client/src/protocol/shooter/training.dart' as _iisju3we;
import 'package:oneshot_client/src/protocol/subscription/subscription_plan.dart'
    as _iq7fauej;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i312scxx;
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'access_control/role_permission.dart' as _itwd6fku;
import 'access_control/security_role.dart' as _in9fkuzh;
import 'access_control/user_role.dart' as _iflys0o9;
import 'common/accessory.dart' as _i18rxkcg;
import 'common/address.dart' as _ii1cybhg;
import 'common/document.dart' as _i023ezu2;
import 'common/one_shot_exception.dart' as _i2v0zfwt;
import 'common/supply_stock.dart' as _i8y573y6;
import 'common/user_profile.dart' as _izgbvseu;
import 'company/company.dart' as _ienljv70;
import 'company/company_type.dart' as _i7fsgy8h;
import 'company/membership.dart' as _i29p8qv7;
import 'company/range_visit.dart' as _iqo0zmu4;
import 'enums/access_level.enum.dart' as _iugjo2wb;
import 'enums/accessory.enum.dart' as _ip9lql6r;
import 'enums/app_module.enum.dart' as _iyudezai;
import 'enums/asaas_webhook_event_type.enum.dart' as _iy4kwzbj;
import 'enums/conservation_state.enum.dart' as _iuu90wd5;
import 'enums/currency.enum.dart' as _ictknidt;
import 'enums/document_type.enum.dart' as _ibornalb;
import 'enums/financial_entry_status.dart' as _idw6xq4s;
import 'enums/financial_entry_type.dart' as _iv2iml2v;
import 'enums/firearm_action.enum.dart' as _itctldyk;
import 'enums/firearm_purpose.enum.dart' as _ipfzkkcy;
import 'enums/firearm_type.enum.dart' as _iv6h25me;
import 'enums/gender.enum.dart' as _ivjv70nm;
import 'enums/invoice_status.enum.dart' as _iwp0wycx;
import 'enums/membership_status.dart' as _iaawilat;
import 'enums/payment_method.enum.dart' as _ir7lu9de;
import 'enums/payment_status.enum.dart' as _ikjzbt8l;
import 'enums/pix_key_type.dart' as _i2xwc0ya;
import 'enums/plan_periodicity.enum.dart' as _ihsiicw8;
import 'enums/plan_status.enum.dart' as _i3zf9gwu;
import 'enums/plan_type.enum.dart' as _itku2k2q;
import 'enums/platform_app.enum.dart' as _i2yfqo06;
import 'enums/registry_body.enum.dart' as _ibbobdoe;
import 'enums/usage_type.enum.dart' as _ixsenwfe;
import 'enums/user_status.enum.dart' as _ihk15r1q;
import 'enums/user_type.enum.dart' as _i6i91bhn;
import 'finance/asaas_webhook_event.dart' as _i268wbv5;
import 'finance/bank.dart' as _i7csfp3a;
import 'finance/bank_account.dart' as _i1qq6iwp;
import 'finance/financial_entry.dart' as _irygpv1g;
import 'finance/invoice.dart' as _ivdiuwq4;
import 'finance/invoice_item.dart' as _izi6zi6k;
import 'finance/payment.dart' as _i3em9ox0;
import 'greeting.dart' as _ig8bxnp5;
import 'gunsmith/gunsmith.dart' as _i1xnjo88;
import 'gunsmith/gunsmith_client.dart' as _iov85fbn;
import 'gunsmith/service_order.dart' as _itc8b666;
import 'gunsmith/service_order_item.dart' as _igkm4f4b;
import 'product/product.dart' as _ip2j4rpy;
import 'product/product_group.dart' as _iy51xlx2;
import 'shooter/ammunition_stock.dart' as _ig3iv7v1;
import 'shooter/firearm.dart' as _i7i930pv;
import 'shooter/reload_session.dart' as _ipl25531;
import 'shooter/reload_test.dart' as _ikjmk4up;
import 'shooter/training.dart' as _iujmcebm;
import 'subscription/subscription_plan.dart' as _iq5ctf45;
export 'access_control/role_permission.dart';
export 'access_control/security_role.dart';
export 'access_control/user_role.dart';
export 'common/accessory.dart';
export 'common/address.dart';
export 'common/document.dart';
export 'common/one_shot_exception.dart';
export 'common/supply_stock.dart';
export 'common/user_profile.dart';
export 'company/company.dart';
export 'company/company_type.dart';
export 'company/membership.dart';
export 'company/range_visit.dart';
export 'enums/access_level.enum.dart';
export 'enums/accessory.enum.dart';
export 'enums/app_module.enum.dart';
export 'enums/asaas_webhook_event_type.enum.dart';
export 'enums/conservation_state.enum.dart';
export 'enums/currency.enum.dart';
export 'enums/document_type.enum.dart';
export 'enums/financial_entry_status.dart';
export 'enums/financial_entry_type.dart';
export 'enums/firearm_action.enum.dart';
export 'enums/firearm_purpose.enum.dart';
export 'enums/firearm_type.enum.dart';
export 'enums/gender.enum.dart';
export 'enums/invoice_status.enum.dart';
export 'enums/membership_status.dart';
export 'enums/payment_method.enum.dart';
export 'enums/payment_status.enum.dart';
export 'enums/pix_key_type.dart';
export 'enums/plan_periodicity.enum.dart';
export 'enums/plan_status.enum.dart';
export 'enums/plan_type.enum.dart';
export 'enums/platform_app.enum.dart';
export 'enums/registry_body.enum.dart';
export 'enums/usage_type.enum.dart';
export 'enums/user_status.enum.dart';
export 'enums/user_type.enum.dart';
export 'finance/asaas_webhook_event.dart';
export 'finance/bank.dart';
export 'finance/bank_account.dart';
export 'finance/financial_entry.dart';
export 'finance/invoice.dart';
export 'finance/invoice_item.dart';
export 'finance/payment.dart';
export 'greeting.dart';
export 'gunsmith/gunsmith.dart';
export 'gunsmith/gunsmith_client.dart';
export 'gunsmith/service_order.dart';
export 'gunsmith/service_order_item.dart';
export 'product/product.dart';
export 'product/product_group.dart';
export 'shooter/ammunition_stock.dart';
export 'shooter/firearm.dart';
export 'shooter/reload_session.dart';
export 'shooter/reload_test.dart';
export 'shooter/training.dart';
export 'subscription/subscription_plan.dart';
export 'client.dart';

class Protocol extends _isc.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._().._registerHostProtocols();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(dynamic data, [Type? t]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on _isc.DeserializationClassNameNotFoundException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _itwd6fku.RolePermission) {
      return _itwd6fku.RolePermission.fromJson(data) as T;
    }
    if (t == _in9fkuzh.SecurityRole) {
      return _in9fkuzh.SecurityRole.fromJson(data) as T;
    }
    if (t == _iflys0o9.UserRole) {
      return _iflys0o9.UserRole.fromJson(data) as T;
    }
    if (t == _i18rxkcg.Accessory) {
      return _i18rxkcg.Accessory.fromJson(data) as T;
    }
    if (t == _ii1cybhg.Address) {
      return _ii1cybhg.Address.fromJson(data) as T;
    }
    if (t == _i023ezu2.Document) {
      return _i023ezu2.Document.fromJson(data) as T;
    }
    if (t == _i2v0zfwt.AppException) {
      return _i2v0zfwt.AppException.fromJson(data) as T;
    }
    if (t == _i8y573y6.SupplyStock) {
      return _i8y573y6.SupplyStock.fromJson(data) as T;
    }
    if (t == _izgbvseu.UserProfile) {
      return _izgbvseu.UserProfile.fromJson(data) as T;
    }
    if (t == _ienljv70.Company) {
      return _ienljv70.Company.fromJson(data) as T;
    }
    if (t == _i7fsgy8h.CompanyType) {
      return _i7fsgy8h.CompanyType.fromJson(data) as T;
    }
    if (t == _i29p8qv7.Membership) {
      return _i29p8qv7.Membership.fromJson(data) as T;
    }
    if (t == _iqo0zmu4.RangeVisit) {
      return _iqo0zmu4.RangeVisit.fromJson(data) as T;
    }
    if (t == _iugjo2wb.AccessLevel) {
      return _iugjo2wb.AccessLevel.fromJson(data) as T;
    }
    if (t == _ip9lql6r.AccessoryType) {
      return _ip9lql6r.AccessoryType.fromJson(data) as T;
    }
    if (t == _iyudezai.AppModule) {
      return _iyudezai.AppModule.fromJson(data) as T;
    }
    if (t == _iy4kwzbj.AsaasWebhookEventType) {
      return _iy4kwzbj.AsaasWebhookEventType.fromJson(data) as T;
    }
    if (t == _iuu90wd5.ConservationState) {
      return _iuu90wd5.ConservationState.fromJson(data) as T;
    }
    if (t == _ictknidt.Currency) {
      return _ictknidt.Currency.fromJson(data) as T;
    }
    if (t == _ibornalb.DocumentType) {
      return _ibornalb.DocumentType.fromJson(data) as T;
    }
    if (t == _idw6xq4s.FinancialEntryStatus) {
      return _idw6xq4s.FinancialEntryStatus.fromJson(data) as T;
    }
    if (t == _iv2iml2v.FinancialEntryType) {
      return _iv2iml2v.FinancialEntryType.fromJson(data) as T;
    }
    if (t == _itctldyk.FirearmAction) {
      return _itctldyk.FirearmAction.fromJson(data) as T;
    }
    if (t == _ipfzkkcy.FirearmPurpose) {
      return _ipfzkkcy.FirearmPurpose.fromJson(data) as T;
    }
    if (t == _iv6h25me.FirearmType) {
      return _iv6h25me.FirearmType.fromJson(data) as T;
    }
    if (t == _ivjv70nm.Gender) {
      return _ivjv70nm.Gender.fromJson(data) as T;
    }
    if (t == _iwp0wycx.InvoiceStatus) {
      return _iwp0wycx.InvoiceStatus.fromJson(data) as T;
    }
    if (t == _iaawilat.MembershipStatus) {
      return _iaawilat.MembershipStatus.fromJson(data) as T;
    }
    if (t == _ir7lu9de.PaymentMethod) {
      return _ir7lu9de.PaymentMethod.fromJson(data) as T;
    }
    if (t == _ikjzbt8l.PaymentStatus) {
      return _ikjzbt8l.PaymentStatus.fromJson(data) as T;
    }
    if (t == _i2xwc0ya.PixKeyType) {
      return _i2xwc0ya.PixKeyType.fromJson(data) as T;
    }
    if (t == _ihsiicw8.PlanPeriodicity) {
      return _ihsiicw8.PlanPeriodicity.fromJson(data) as T;
    }
    if (t == _i3zf9gwu.PlanStatus) {
      return _i3zf9gwu.PlanStatus.fromJson(data) as T;
    }
    if (t == _itku2k2q.PlanType) {
      return _itku2k2q.PlanType.fromJson(data) as T;
    }
    if (t == _i2yfqo06.PlatformApp) {
      return _i2yfqo06.PlatformApp.fromJson(data) as T;
    }
    if (t == _ibbobdoe.RegistryBody) {
      return _ibbobdoe.RegistryBody.fromJson(data) as T;
    }
    if (t == _ixsenwfe.UsageType) {
      return _ixsenwfe.UsageType.fromJson(data) as T;
    }
    if (t == _ihk15r1q.UserStatus) {
      return _ihk15r1q.UserStatus.fromJson(data) as T;
    }
    if (t == _i6i91bhn.UserType) {
      return _i6i91bhn.UserType.fromJson(data) as T;
    }
    if (t == _i268wbv5.AsaasWebhookEvent) {
      return _i268wbv5.AsaasWebhookEvent.fromJson(data) as T;
    }
    if (t == _i7csfp3a.Bank) {
      return _i7csfp3a.Bank.fromJson(data) as T;
    }
    if (t == _i1qq6iwp.BankAccount) {
      return _i1qq6iwp.BankAccount.fromJson(data) as T;
    }
    if (t == _irygpv1g.FinancialEntry) {
      return _irygpv1g.FinancialEntry.fromJson(data) as T;
    }
    if (t == _ivdiuwq4.Invoice) {
      return _ivdiuwq4.Invoice.fromJson(data) as T;
    }
    if (t == _izi6zi6k.InvoiceItem) {
      return _izi6zi6k.InvoiceItem.fromJson(data) as T;
    }
    if (t == _i3em9ox0.Payment) {
      return _i3em9ox0.Payment.fromJson(data) as T;
    }
    if (t == _ig8bxnp5.Greeting) {
      return _ig8bxnp5.Greeting.fromJson(data) as T;
    }
    if (t == _i1xnjo88.Gunsmith) {
      return _i1xnjo88.Gunsmith.fromJson(data) as T;
    }
    if (t == _iov85fbn.GunsmithClient) {
      return _iov85fbn.GunsmithClient.fromJson(data) as T;
    }
    if (t == _itc8b666.ServiceOrder) {
      return _itc8b666.ServiceOrder.fromJson(data) as T;
    }
    if (t == _igkm4f4b.ServiceOrderItem) {
      return _igkm4f4b.ServiceOrderItem.fromJson(data) as T;
    }
    if (t == _ip2j4rpy.Product) {
      return _ip2j4rpy.Product.fromJson(data) as T;
    }
    if (t == _iy51xlx2.ProductGroup) {
      return _iy51xlx2.ProductGroup.fromJson(data) as T;
    }
    if (t == _ig3iv7v1.AmmunitionStock) {
      return _ig3iv7v1.AmmunitionStock.fromJson(data) as T;
    }
    if (t == _i7i930pv.Firearm) {
      return _i7i930pv.Firearm.fromJson(data) as T;
    }
    if (t == _ipl25531.ReloadSession) {
      return _ipl25531.ReloadSession.fromJson(data) as T;
    }
    if (t == _ikjmk4up.ReloadTest) {
      return _ikjmk4up.ReloadTest.fromJson(data) as T;
    }
    if (t == _iujmcebm.Training) {
      return _iujmcebm.Training.fromJson(data) as T;
    }
    if (t == _iq5ctf45.SubscriptionPlan) {
      return _iq5ctf45.SubscriptionPlan.fromJson(data) as T;
    }
    if (t == _isc.getType<_itwd6fku.RolePermission?>()) {
      return (data != null ? _itwd6fku.RolePermission.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_in9fkuzh.SecurityRole?>()) {
      return (data != null ? _in9fkuzh.SecurityRole.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iflys0o9.UserRole?>()) {
      return (data != null ? _iflys0o9.UserRole.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i18rxkcg.Accessory?>()) {
      return (data != null ? _i18rxkcg.Accessory.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ii1cybhg.Address?>()) {
      return (data != null ? _ii1cybhg.Address.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i023ezu2.Document?>()) {
      return (data != null ? _i023ezu2.Document.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i2v0zfwt.AppException?>()) {
      return (data != null ? _i2v0zfwt.AppException.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i8y573y6.SupplyStock?>()) {
      return (data != null ? _i8y573y6.SupplyStock.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_izgbvseu.UserProfile?>()) {
      return (data != null ? _izgbvseu.UserProfile.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ienljv70.Company?>()) {
      return (data != null ? _ienljv70.Company.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i7fsgy8h.CompanyType?>()) {
      return (data != null ? _i7fsgy8h.CompanyType.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i29p8qv7.Membership?>()) {
      return (data != null ? _i29p8qv7.Membership.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iqo0zmu4.RangeVisit?>()) {
      return (data != null ? _iqo0zmu4.RangeVisit.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iugjo2wb.AccessLevel?>()) {
      return (data != null ? _iugjo2wb.AccessLevel.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ip9lql6r.AccessoryType?>()) {
      return (data != null ? _ip9lql6r.AccessoryType.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iyudezai.AppModule?>()) {
      return (data != null ? _iyudezai.AppModule.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iy4kwzbj.AsaasWebhookEventType?>()) {
      return (data != null
              ? _iy4kwzbj.AsaasWebhookEventType.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iuu90wd5.ConservationState?>()) {
      return (data != null ? _iuu90wd5.ConservationState.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ictknidt.Currency?>()) {
      return (data != null ? _ictknidt.Currency.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ibornalb.DocumentType?>()) {
      return (data != null ? _ibornalb.DocumentType.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_idw6xq4s.FinancialEntryStatus?>()) {
      return (data != null
              ? _idw6xq4s.FinancialEntryStatus.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iv2iml2v.FinancialEntryType?>()) {
      return (data != null ? _iv2iml2v.FinancialEntryType.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_itctldyk.FirearmAction?>()) {
      return (data != null ? _itctldyk.FirearmAction.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ipfzkkcy.FirearmPurpose?>()) {
      return (data != null ? _ipfzkkcy.FirearmPurpose.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iv6h25me.FirearmType?>()) {
      return (data != null ? _iv6h25me.FirearmType.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ivjv70nm.Gender?>()) {
      return (data != null ? _ivjv70nm.Gender.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iwp0wycx.InvoiceStatus?>()) {
      return (data != null ? _iwp0wycx.InvoiceStatus.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iaawilat.MembershipStatus?>()) {
      return (data != null ? _iaawilat.MembershipStatus.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ir7lu9de.PaymentMethod?>()) {
      return (data != null ? _ir7lu9de.PaymentMethod.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ikjzbt8l.PaymentStatus?>()) {
      return (data != null ? _ikjzbt8l.PaymentStatus.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i2xwc0ya.PixKeyType?>()) {
      return (data != null ? _i2xwc0ya.PixKeyType.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ihsiicw8.PlanPeriodicity?>()) {
      return (data != null ? _ihsiicw8.PlanPeriodicity.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i3zf9gwu.PlanStatus?>()) {
      return (data != null ? _i3zf9gwu.PlanStatus.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_itku2k2q.PlanType?>()) {
      return (data != null ? _itku2k2q.PlanType.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i2yfqo06.PlatformApp?>()) {
      return (data != null ? _i2yfqo06.PlatformApp.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ibbobdoe.RegistryBody?>()) {
      return (data != null ? _ibbobdoe.RegistryBody.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ixsenwfe.UsageType?>()) {
      return (data != null ? _ixsenwfe.UsageType.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ihk15r1q.UserStatus?>()) {
      return (data != null ? _ihk15r1q.UserStatus.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i6i91bhn.UserType?>()) {
      return (data != null ? _i6i91bhn.UserType.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i268wbv5.AsaasWebhookEvent?>()) {
      return (data != null ? _i268wbv5.AsaasWebhookEvent.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i7csfp3a.Bank?>()) {
      return (data != null ? _i7csfp3a.Bank.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i1qq6iwp.BankAccount?>()) {
      return (data != null ? _i1qq6iwp.BankAccount.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_irygpv1g.FinancialEntry?>()) {
      return (data != null ? _irygpv1g.FinancialEntry.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ivdiuwq4.Invoice?>()) {
      return (data != null ? _ivdiuwq4.Invoice.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_izi6zi6k.InvoiceItem?>()) {
      return (data != null ? _izi6zi6k.InvoiceItem.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i3em9ox0.Payment?>()) {
      return (data != null ? _i3em9ox0.Payment.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ig8bxnp5.Greeting?>()) {
      return (data != null ? _ig8bxnp5.Greeting.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i1xnjo88.Gunsmith?>()) {
      return (data != null ? _i1xnjo88.Gunsmith.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iov85fbn.GunsmithClient?>()) {
      return (data != null ? _iov85fbn.GunsmithClient.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_itc8b666.ServiceOrder?>()) {
      return (data != null ? _itc8b666.ServiceOrder.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_igkm4f4b.ServiceOrderItem?>()) {
      return (data != null ? _igkm4f4b.ServiceOrderItem.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ip2j4rpy.Product?>()) {
      return (data != null ? _ip2j4rpy.Product.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iy51xlx2.ProductGroup?>()) {
      return (data != null ? _iy51xlx2.ProductGroup.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ig3iv7v1.AmmunitionStock?>()) {
      return (data != null ? _ig3iv7v1.AmmunitionStock.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i7i930pv.Firearm?>()) {
      return (data != null ? _i7i930pv.Firearm.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ipl25531.ReloadSession?>()) {
      return (data != null ? _ipl25531.ReloadSession.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ikjmk4up.ReloadTest?>()) {
      return (data != null ? _ikjmk4up.ReloadTest.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iujmcebm.Training?>()) {
      return (data != null ? _iujmcebm.Training.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iq5ctf45.SubscriptionPlan?>()) {
      return (data != null ? _iq5ctf45.SubscriptionPlan.fromJson(data) : null)
          as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == _isc.getType<List<String>?>()) {
      return (data != null
              ? (data as List).map((e) => deserialize<String>(e)).toList()
              : null)
          as T;
    }
    if (t == List<_i6i91bhn.UserType>) {
      return (data as List)
              .map((e) => deserialize<_i6i91bhn.UserType>(e))
              .toList()
          as T;
    }
    if (t == _isc.getType<List<_i6i91bhn.UserType>?>()) {
      return (data != null
              ? (data as List)
                    .map((e) => deserialize<_i6i91bhn.UserType>(e))
                    .toList()
              : null)
          as T;
    }
    if (t == List<_i5j6rswi.Accessory>) {
      return (data as List)
              .map((e) => deserialize<_i5j6rswi.Accessory>(e))
              .toList()
          as T;
    }
    if (t == List<_ig3cbd8p.AmmunitionStock>) {
      return (data as List)
              .map((e) => deserialize<_ig3cbd8p.AmmunitionStock>(e))
              .toList()
          as T;
    }
    if (t == List<_i0k9g66j.BankAccount>) {
      return (data as List)
              .map((e) => deserialize<_i0k9g66j.BankAccount>(e))
              .toList()
          as T;
    }
    if (t == List<_iu4e25gm.Bank>) {
      return (data as List).map((e) => deserialize<_iu4e25gm.Bank>(e)).toList()
          as T;
    }
    if (t == List<_i3sd1a32.Company>) {
      return (data as List)
              .map((e) => deserialize<_i3sd1a32.Company>(e))
              .toList()
          as T;
    }
    if (t == List<_id04q892.Membership>) {
      return (data as List)
              .map((e) => deserialize<_id04q892.Membership>(e))
              .toList()
          as T;
    }
    if (t == List<_iw6oqvjt.RangeVisit>) {
      return (data as List)
              .map((e) => deserialize<_iw6oqvjt.RangeVisit>(e))
              .toList()
          as T;
    }
    if (t == List<_i0b5zr2s.Document>) {
      return (data as List)
              .map((e) => deserialize<_i0b5zr2s.Document>(e))
              .toList()
          as T;
    }
    if (t == List<_i73s6949.FinancialEntry>) {
      return (data as List)
              .map((e) => deserialize<_i73s6949.FinancialEntry>(e))
              .toList()
          as T;
    }
    if (t == List<_io8jidll.Firearm>) {
      return (data as List)
              .map((e) => deserialize<_io8jidll.Firearm>(e))
              .toList()
          as T;
    }
    if (t == List<_i36mig6d.Gunsmith>) {
      return (data as List)
              .map((e) => deserialize<_i36mig6d.Gunsmith>(e))
              .toList()
          as T;
    }
    if (t == List<_is59bod2.GunsmithClient>) {
      return (data as List)
              .map((e) => deserialize<_is59bod2.GunsmithClient>(e))
              .toList()
          as T;
    }
    if (t == List<_ifcud9hx.ServiceOrderItem>) {
      return (data as List)
              .map((e) => deserialize<_ifcud9hx.ServiceOrderItem>(e))
              .toList()
          as T;
    }
    if (t == List<_imab12od.ServiceOrder>) {
      return (data as List)
              .map((e) => deserialize<_imab12od.ServiceOrder>(e))
              .toList()
          as T;
    }
    if (t == List<_iakdg9xr.InvoiceItem>) {
      return (data as List)
              .map((e) => deserialize<_iakdg9xr.InvoiceItem>(e))
              .toList()
          as T;
    }
    if (t == List<_ipuzw8nn.Invoice>) {
      return (data as List)
              .map((e) => deserialize<_ipuzw8nn.Invoice>(e))
              .toList()
          as T;
    }
    if (t == List<_ie2ol2q9.Payment>) {
      return (data as List)
              .map((e) => deserialize<_ie2ol2q9.Payment>(e))
              .toList()
          as T;
    }
    if (t == List<_i2pthzti.Product>) {
      return (data as List)
              .map((e) => deserialize<_i2pthzti.Product>(e))
              .toList()
          as T;
    }
    if (t == List<_io32npgw.ProductGroup>) {
      return (data as List)
              .map((e) => deserialize<_io32npgw.ProductGroup>(e))
              .toList()
          as T;
    }
    if (t == List<_i6yaeg3x.ReloadSession>) {
      return (data as List)
              .map((e) => deserialize<_i6yaeg3x.ReloadSession>(e))
              .toList()
          as T;
    }
    if (t == List<_ifmg7iki.ReloadTest>) {
      return (data as List)
              .map((e) => deserialize<_ifmg7iki.ReloadTest>(e))
              .toList()
          as T;
    }
    if (t == List<_i39d40wj.SupplyStock>) {
      return (data as List)
              .map((e) => deserialize<_i39d40wj.SupplyStock>(e))
              .toList()
          as T;
    }
    if (t == List<_ih25lxcw.RolePermission>) {
      return (data as List)
              .map((e) => deserialize<_ih25lxcw.RolePermission>(e))
              .toList()
          as T;
    }
    if (t == List<_iz410fgy.SecurityRole>) {
      return (data as List)
              .map((e) => deserialize<_iz410fgy.SecurityRole>(e))
              .toList()
          as T;
    }
    if (t == List<_iq7fauej.SubscriptionPlan>) {
      return (data as List)
              .map((e) => deserialize<_iq7fauej.SubscriptionPlan>(e))
              .toList()
          as T;
    }
    if (t == List<_iisju3we.Training>) {
      return (data as List)
              .map((e) => deserialize<_iisju3we.Training>(e))
              .toList()
          as T;
    }
    if (t == List<_itg25mst.UserProfile>) {
      return (data as List)
              .map((e) => deserialize<_itg25mst.UserProfile>(e))
              .toList()
          as T;
    }
    if (t == List<_isc.UuidValue>) {
      return (data as List).map((e) => deserialize<_isc.UuidValue>(e)).toList()
          as T;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<dynamic>(v)),
          )
          as T;
    }
    if (t == dynamic) {
      return deserializeDynamicFieldValue(data) as T;
    }
    if (t == List<Map<String, dynamic>>) {
      return (data as List)
              .map((e) => deserialize<Map<String, dynamic>>(e))
              .toList()
          as T;
    }
    try {
      return _i312scxx.Protocol().deserialize<T>(data, t);
    } on _isc.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _itwd6fku.RolePermission => 'RolePermission',
      _in9fkuzh.SecurityRole => 'SecurityRole',
      _iflys0o9.UserRole => 'UserRole',
      _i18rxkcg.Accessory => 'Accessory',
      _ii1cybhg.Address => 'Address',
      _i023ezu2.Document => 'Document',
      _i2v0zfwt.AppException => 'AppException',
      _i8y573y6.SupplyStock => 'SupplyStock',
      _izgbvseu.UserProfile => 'UserProfile',
      _ienljv70.Company => 'Company',
      _i7fsgy8h.CompanyType => 'CompanyType',
      _i29p8qv7.Membership => 'Membership',
      _iqo0zmu4.RangeVisit => 'RangeVisit',
      _iugjo2wb.AccessLevel => 'AccessLevel',
      _ip9lql6r.AccessoryType => 'AccessoryType',
      _iyudezai.AppModule => 'AppModule',
      _iy4kwzbj.AsaasWebhookEventType => 'AsaasWebhookEventType',
      _iuu90wd5.ConservationState => 'ConservationState',
      _ictknidt.Currency => 'Currency',
      _ibornalb.DocumentType => 'DocumentType',
      _idw6xq4s.FinancialEntryStatus => 'FinancialEntryStatus',
      _iv2iml2v.FinancialEntryType => 'FinancialEntryType',
      _itctldyk.FirearmAction => 'FirearmAction',
      _ipfzkkcy.FirearmPurpose => 'FirearmPurpose',
      _iv6h25me.FirearmType => 'FirearmType',
      _ivjv70nm.Gender => 'Gender',
      _iwp0wycx.InvoiceStatus => 'InvoiceStatus',
      _iaawilat.MembershipStatus => 'MembershipStatus',
      _ir7lu9de.PaymentMethod => 'PaymentMethod',
      _ikjzbt8l.PaymentStatus => 'PaymentStatus',
      _i2xwc0ya.PixKeyType => 'PixKeyType',
      _ihsiicw8.PlanPeriodicity => 'PlanPeriodicity',
      _i3zf9gwu.PlanStatus => 'PlanStatus',
      _itku2k2q.PlanType => 'PlanType',
      _i2yfqo06.PlatformApp => 'PlatformApp',
      _ibbobdoe.RegistryBody => 'RegistryBody',
      _ixsenwfe.UsageType => 'UsageType',
      _ihk15r1q.UserStatus => 'UserStatus',
      _i6i91bhn.UserType => 'UserType',
      _i268wbv5.AsaasWebhookEvent => 'AsaasWebhookEvent',
      _i7csfp3a.Bank => 'Bank',
      _i1qq6iwp.BankAccount => 'BankAccount',
      _irygpv1g.FinancialEntry => 'FinancialEntry',
      _ivdiuwq4.Invoice => 'Invoice',
      _izi6zi6k.InvoiceItem => 'InvoiceItem',
      _i3em9ox0.Payment => 'Payment',
      _ig8bxnp5.Greeting => 'Greeting',
      _i1xnjo88.Gunsmith => 'Gunsmith',
      _iov85fbn.GunsmithClient => 'GunsmithClient',
      _itc8b666.ServiceOrder => 'ServiceOrder',
      _igkm4f4b.ServiceOrderItem => 'ServiceOrderItem',
      _ip2j4rpy.Product => 'Product',
      _iy51xlx2.ProductGroup => 'ProductGroup',
      _ig3iv7v1.AmmunitionStock => 'AmmunitionStock',
      _i7i930pv.Firearm => 'Firearm',
      _ipl25531.ReloadSession => 'ReloadSession',
      _ikjmk4up.ReloadTest => 'ReloadTest',
      _iujmcebm.Training => 'Training',
      _iq5ctf45.SubscriptionPlan => 'SubscriptionPlan',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst('oneshot.', '');
    }

    switch (data) {
      case _itwd6fku.RolePermission():
        return 'RolePermission';
      case _in9fkuzh.SecurityRole():
        return 'SecurityRole';
      case _iflys0o9.UserRole():
        return 'UserRole';
      case _i18rxkcg.Accessory():
        return 'Accessory';
      case _ii1cybhg.Address():
        return 'Address';
      case _i023ezu2.Document():
        return 'Document';
      case _i2v0zfwt.AppException():
        return 'AppException';
      case _i8y573y6.SupplyStock():
        return 'SupplyStock';
      case _izgbvseu.UserProfile():
        return 'UserProfile';
      case _ienljv70.Company():
        return 'Company';
      case _i7fsgy8h.CompanyType():
        return 'CompanyType';
      case _i29p8qv7.Membership():
        return 'Membership';
      case _iqo0zmu4.RangeVisit():
        return 'RangeVisit';
      case _iugjo2wb.AccessLevel():
        return 'AccessLevel';
      case _ip9lql6r.AccessoryType():
        return 'AccessoryType';
      case _iyudezai.AppModule():
        return 'AppModule';
      case _iy4kwzbj.AsaasWebhookEventType():
        return 'AsaasWebhookEventType';
      case _iuu90wd5.ConservationState():
        return 'ConservationState';
      case _ictknidt.Currency():
        return 'Currency';
      case _ibornalb.DocumentType():
        return 'DocumentType';
      case _idw6xq4s.FinancialEntryStatus():
        return 'FinancialEntryStatus';
      case _iv2iml2v.FinancialEntryType():
        return 'FinancialEntryType';
      case _itctldyk.FirearmAction():
        return 'FirearmAction';
      case _ipfzkkcy.FirearmPurpose():
        return 'FirearmPurpose';
      case _iv6h25me.FirearmType():
        return 'FirearmType';
      case _ivjv70nm.Gender():
        return 'Gender';
      case _iwp0wycx.InvoiceStatus():
        return 'InvoiceStatus';
      case _iaawilat.MembershipStatus():
        return 'MembershipStatus';
      case _ir7lu9de.PaymentMethod():
        return 'PaymentMethod';
      case _ikjzbt8l.PaymentStatus():
        return 'PaymentStatus';
      case _i2xwc0ya.PixKeyType():
        return 'PixKeyType';
      case _ihsiicw8.PlanPeriodicity():
        return 'PlanPeriodicity';
      case _i3zf9gwu.PlanStatus():
        return 'PlanStatus';
      case _itku2k2q.PlanType():
        return 'PlanType';
      case _i2yfqo06.PlatformApp():
        return 'PlatformApp';
      case _ibbobdoe.RegistryBody():
        return 'RegistryBody';
      case _ixsenwfe.UsageType():
        return 'UsageType';
      case _ihk15r1q.UserStatus():
        return 'UserStatus';
      case _i6i91bhn.UserType():
        return 'UserType';
      case _i268wbv5.AsaasWebhookEvent():
        return 'AsaasWebhookEvent';
      case _i7csfp3a.Bank():
        return 'Bank';
      case _i1qq6iwp.BankAccount():
        return 'BankAccount';
      case _irygpv1g.FinancialEntry():
        return 'FinancialEntry';
      case _ivdiuwq4.Invoice():
        return 'Invoice';
      case _izi6zi6k.InvoiceItem():
        return 'InvoiceItem';
      case _i3em9ox0.Payment():
        return 'Payment';
      case _ig8bxnp5.Greeting():
        return 'Greeting';
      case _i1xnjo88.Gunsmith():
        return 'Gunsmith';
      case _iov85fbn.GunsmithClient():
        return 'GunsmithClient';
      case _itc8b666.ServiceOrder():
        return 'ServiceOrder';
      case _igkm4f4b.ServiceOrderItem():
        return 'ServiceOrderItem';
      case _ip2j4rpy.Product():
        return 'Product';
      case _iy51xlx2.ProductGroup():
        return 'ProductGroup';
      case _ig3iv7v1.AmmunitionStock():
        return 'AmmunitionStock';
      case _i7i930pv.Firearm():
        return 'Firearm';
      case _ipl25531.ReloadSession():
        return 'ReloadSession';
      case _ikjmk4up.ReloadTest():
        return 'ReloadTest';
      case _iujmcebm.Training():
        return 'Training';
      case _iq5ctf45.SubscriptionPlan():
        return 'SubscriptionPlan';
    }
    className = _i312scxx.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.') ? className : 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'RolePermission') {
      return deserialize<_itwd6fku.RolePermission>(data['data']);
    }
    if (dataClassName == 'SecurityRole') {
      return deserialize<_in9fkuzh.SecurityRole>(data['data']);
    }
    if (dataClassName == 'UserRole') {
      return deserialize<_iflys0o9.UserRole>(data['data']);
    }
    if (dataClassName == 'Accessory') {
      return deserialize<_i18rxkcg.Accessory>(data['data']);
    }
    if (dataClassName == 'Address') {
      return deserialize<_ii1cybhg.Address>(data['data']);
    }
    if (dataClassName == 'Document') {
      return deserialize<_i023ezu2.Document>(data['data']);
    }
    if (dataClassName == 'AppException') {
      return deserialize<_i2v0zfwt.AppException>(data['data']);
    }
    if (dataClassName == 'SupplyStock') {
      return deserialize<_i8y573y6.SupplyStock>(data['data']);
    }
    if (dataClassName == 'UserProfile') {
      return deserialize<_izgbvseu.UserProfile>(data['data']);
    }
    if (dataClassName == 'Company') {
      return deserialize<_ienljv70.Company>(data['data']);
    }
    if (dataClassName == 'CompanyType') {
      return deserialize<_i7fsgy8h.CompanyType>(data['data']);
    }
    if (dataClassName == 'Membership') {
      return deserialize<_i29p8qv7.Membership>(data['data']);
    }
    if (dataClassName == 'RangeVisit') {
      return deserialize<_iqo0zmu4.RangeVisit>(data['data']);
    }
    if (dataClassName == 'AccessLevel') {
      return deserialize<_iugjo2wb.AccessLevel>(data['data']);
    }
    if (dataClassName == 'AccessoryType') {
      return deserialize<_ip9lql6r.AccessoryType>(data['data']);
    }
    if (dataClassName == 'AppModule') {
      return deserialize<_iyudezai.AppModule>(data['data']);
    }
    if (dataClassName == 'AsaasWebhookEventType') {
      return deserialize<_iy4kwzbj.AsaasWebhookEventType>(data['data']);
    }
    if (dataClassName == 'ConservationState') {
      return deserialize<_iuu90wd5.ConservationState>(data['data']);
    }
    if (dataClassName == 'Currency') {
      return deserialize<_ictknidt.Currency>(data['data']);
    }
    if (dataClassName == 'DocumentType') {
      return deserialize<_ibornalb.DocumentType>(data['data']);
    }
    if (dataClassName == 'FinancialEntryStatus') {
      return deserialize<_idw6xq4s.FinancialEntryStatus>(data['data']);
    }
    if (dataClassName == 'FinancialEntryType') {
      return deserialize<_iv2iml2v.FinancialEntryType>(data['data']);
    }
    if (dataClassName == 'FirearmAction') {
      return deserialize<_itctldyk.FirearmAction>(data['data']);
    }
    if (dataClassName == 'FirearmPurpose') {
      return deserialize<_ipfzkkcy.FirearmPurpose>(data['data']);
    }
    if (dataClassName == 'FirearmType') {
      return deserialize<_iv6h25me.FirearmType>(data['data']);
    }
    if (dataClassName == 'Gender') {
      return deserialize<_ivjv70nm.Gender>(data['data']);
    }
    if (dataClassName == 'InvoiceStatus') {
      return deserialize<_iwp0wycx.InvoiceStatus>(data['data']);
    }
    if (dataClassName == 'MembershipStatus') {
      return deserialize<_iaawilat.MembershipStatus>(data['data']);
    }
    if (dataClassName == 'PaymentMethod') {
      return deserialize<_ir7lu9de.PaymentMethod>(data['data']);
    }
    if (dataClassName == 'PaymentStatus') {
      return deserialize<_ikjzbt8l.PaymentStatus>(data['data']);
    }
    if (dataClassName == 'PixKeyType') {
      return deserialize<_i2xwc0ya.PixKeyType>(data['data']);
    }
    if (dataClassName == 'PlanPeriodicity') {
      return deserialize<_ihsiicw8.PlanPeriodicity>(data['data']);
    }
    if (dataClassName == 'PlanStatus') {
      return deserialize<_i3zf9gwu.PlanStatus>(data['data']);
    }
    if (dataClassName == 'PlanType') {
      return deserialize<_itku2k2q.PlanType>(data['data']);
    }
    if (dataClassName == 'PlatformApp') {
      return deserialize<_i2yfqo06.PlatformApp>(data['data']);
    }
    if (dataClassName == 'RegistryBody') {
      return deserialize<_ibbobdoe.RegistryBody>(data['data']);
    }
    if (dataClassName == 'UsageType') {
      return deserialize<_ixsenwfe.UsageType>(data['data']);
    }
    if (dataClassName == 'UserStatus') {
      return deserialize<_ihk15r1q.UserStatus>(data['data']);
    }
    if (dataClassName == 'UserType') {
      return deserialize<_i6i91bhn.UserType>(data['data']);
    }
    if (dataClassName == 'AsaasWebhookEvent') {
      return deserialize<_i268wbv5.AsaasWebhookEvent>(data['data']);
    }
    if (dataClassName == 'Bank') {
      return deserialize<_i7csfp3a.Bank>(data['data']);
    }
    if (dataClassName == 'BankAccount') {
      return deserialize<_i1qq6iwp.BankAccount>(data['data']);
    }
    if (dataClassName == 'FinancialEntry') {
      return deserialize<_irygpv1g.FinancialEntry>(data['data']);
    }
    if (dataClassName == 'Invoice') {
      return deserialize<_ivdiuwq4.Invoice>(data['data']);
    }
    if (dataClassName == 'InvoiceItem') {
      return deserialize<_izi6zi6k.InvoiceItem>(data['data']);
    }
    if (dataClassName == 'Payment') {
      return deserialize<_i3em9ox0.Payment>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_ig8bxnp5.Greeting>(data['data']);
    }
    if (dataClassName == 'Gunsmith') {
      return deserialize<_i1xnjo88.Gunsmith>(data['data']);
    }
    if (dataClassName == 'GunsmithClient') {
      return deserialize<_iov85fbn.GunsmithClient>(data['data']);
    }
    if (dataClassName == 'ServiceOrder') {
      return deserialize<_itc8b666.ServiceOrder>(data['data']);
    }
    if (dataClassName == 'ServiceOrderItem') {
      return deserialize<_igkm4f4b.ServiceOrderItem>(data['data']);
    }
    if (dataClassName == 'Product') {
      return deserialize<_ip2j4rpy.Product>(data['data']);
    }
    if (dataClassName == 'ProductGroup') {
      return deserialize<_iy51xlx2.ProductGroup>(data['data']);
    }
    if (dataClassName == 'AmmunitionStock') {
      return deserialize<_ig3iv7v1.AmmunitionStock>(data['data']);
    }
    if (dataClassName == 'Firearm') {
      return deserialize<_i7i930pv.Firearm>(data['data']);
    }
    if (dataClassName == 'ReloadSession') {
      return deserialize<_ipl25531.ReloadSession>(data['data']);
    }
    if (dataClassName == 'ReloadTest') {
      return deserialize<_ikjmk4up.ReloadTest>(data['data']);
    }
    if (dataClassName == 'Training') {
      return deserialize<_iujmcebm.Training>(data['data']);
    }
    if (dataClassName == 'SubscriptionPlan') {
      return deserialize<_iq5ctf45.SubscriptionPlan>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i312scxx.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  void _registerHostProtocols() {
    _i312scxx.Protocol().registerHostProtocol('oneshot', this);
  }

  @override
  String getModuleName() => 'oneshot';

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _i312scxx.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
