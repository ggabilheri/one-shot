import 'package:oneshot_client/oneshot_client.dart';

// Extensions with dual-casing support to handle generated client inconsistencies

extension PlanTypeExt on PlanType {
  String get label {
    final n = name.toUpperCase();
    if (n == 'COMPANY' || n == 'CLUB') return 'Empresa Parceira';
    if (n == 'GUNSMITH') return 'Armeiro';
    if (n == 'CAC') return 'CAC (Atirador/Colecionador/Caça)';
    return n;
  }
}

extension PlanPeriodicityExt on PlanPeriodicity {
  String get label {
    final n = name.toUpperCase();
    if (n == 'MONTHLY') return 'Mensal';
    if (n == 'QUARTERLY') return 'Trimestral';
    if (n == 'SEMIANNUALLY' || n == 'SEMI_ANNUALLY') return 'Semestral';
    if (n == 'ANNUALLY') return 'Anual';
    return n;
  }
}

extension PlanStatusExt on PlanStatus {
  String get label {
    final n = name.toUpperCase();
    if (n == 'ACTIVE') return 'Ativo';
    if (n == 'INACTIVE') return 'Inativo';
    if (n == 'PAUSED') return 'Pausado';
    if (n == 'CANCELED') return 'Cancelado';
    return n;
  }
}

extension PlatformAppExt on PlatformApp {
  String get label {
    final n = name.toUpperCase();
    if (n.contains('BACKOFFICE')) return 'Backoffice';
    if (n.contains('COMPANY') || n.contains('CLUB')) return 'Gestão de Empresa';
    if (n.contains('SHOOTER')) return 'Atirador (App)';
    return n;
  }
}

extension UserTypeExt on UserType {
  String get label {
    final n = name.toUpperCase();
    if (n == 'GLOBAL_ADMIN' || n == 'GLOBALADMIN') return 'Admin Global';
    if (n == 'COMPANY_ADMIN' || n == 'COMPANYADMIN' || n == 'CLUB_ADMIN' || n == 'CLUBADMIN') return 'Admin Empresa';
    if (n == 'GUNSMITH') return 'Armeiro';
    if (n == 'SHOOTER') return 'Atirador';
    return n;
  }
}

extension AccessLevelExt on AccessLevel {
  String get label {
    final n = name.toUpperCase();
    if (n == 'READ') return 'Leitura';
    if (n == 'WRITE') return 'Escrita';
    if (n == 'DELETE') return 'Exclusão';
    if (n == 'ADMIN') return 'Administrador';
    return n;
  }
}

extension AppModuleExt on AppModule {
  String get label {
    final n = name.toUpperCase();
    if (n == 'DASHBOARD') return 'Dashboard';
    if (n == 'USERS') return 'Usuários';
    if (n == 'COMPANIES' || n == 'CLUBS' || n == 'COMPANYMANAGEMENT' || n == 'CLUBMANAGEMENT') return 'Empresas';
    if (n == 'ROLES') return 'Perfis e Permissões';
    if (n == 'PRODUCTS') return 'Produtos';
    if (n == 'STOCK') return 'Estoque';
    if (n == 'SUBSCRIPTIONS') return 'Assinaturas';
    if (n == 'SETTINGS') return 'Configurações';
    if (n == 'INVOICES') return 'Faturamento';
    if (n == 'CATALOGS') return 'Catálogos';
    if (n == 'GUN_TECHNICAL_SPEC') return 'Ficha Técnica G2C';
    if (n == 'SERVICE_ORDERS') return 'Ordens de Serviço';
    return n;
  }
}
