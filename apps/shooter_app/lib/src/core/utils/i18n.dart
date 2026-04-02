/// Uma classe simples para gerenciar traduções de strings.
/// Segue a regra de uso: "chave".tr()
class I18n {
  static final I18n _instance = I18n._internal();
  factory I18n() => _instance;
  I18n._internal();

  Map<String, String> _translations = {};

  /// Inicializa as traduções. Em um app real, isso carregaria de um JSON.
  /// Para o Módulo 1, incluímos os termos dos enums e formulários.
  void init(Map<String, String> translations) {
    _translations = translations;
  }

  String translate(String key) {
    return _translations[key] ?? key;
  }
}

extension TranslatabbleString on String {
  /// Retorna a tradução da string baseada na chave.
  /// Ex: "firearm.type.pistol".tr()
  String tr() {
    return I18n().translate(this);
  }
}

/// Carregamento inicial das traduções para o Módulo 1 (Usuários e Acervo)
final Map<String, String> ptBR = {
  // Comum
  "common.save": "Salvar",
  "common.cancel": "Cancelar",
  "common.edit": "Editar",
  "common.delete": "Excluir",
  "common.add": "Adicionar",
  "common.search": "Buscar",
  "common.loading": "Carregando...",
  "common.error": "Ocorreu um erro",

  // Perfil / Usuário
  "profile.title": "Meu Perfil",
  "profile.name": "Nome Completo",
  "profile.cpf": "CPF",
  "profile.rg": "RG",
  "profile.birthDate": "Data de Nascimento",
  "profile.gender": "Gênero",
  "profile.phone": "Telefone",
  "profile.email": "E-mail",
  "profile.address": "Endereço",
  "profile.cep": "CEP",
  "profile.street": "Logradouro",
  "profile.number": "Número",
  "profile.neighborhood": "Bairro",
  "profile.city": "Cidade",
  "profile.state": "Estado/UF",

  // Armas (Firearm)
  "firearm.list.title": "Meu Acervo",
  "firearm.form.title": "Dados da Arma",
  "firearm.serialNumber": "Número de Série",
  "firearm.caliber": "Calibre",
  "firearm.manufacturer": "Fabricante",
  "firearm.model": "Modelo",
  "firearm.type": "Tipo de Arma",
  "firearm.purpose": "Finalidade",
  "firearm.action": "Ação",
  "firearm.usage": "Tipo de Uso",

  // Enums - FirearmType
  "enum.firearmType.pistol": "Pistola",
  "enum.firearmType.revolver": "Revólver",
  "enum.firearmType.rifle": "Rifle",
  "enum.firearmType.carbine": "Carabina",
  "enum.firearmType.shotgun": "Espingarda",

  // Enums - FirearmPurpose
  "enum.firearmPurpose.defense": "Defesa Pessoal",
  "enum.firearmPurpose.sport": "Tiro Esportivo",
  "enum.firearmPurpose.collection": "Coleção",
  "enum.firearmPurpose.hunting": "Caça",

  // Enums - FirearmUsage
  "enum.firearmUsage.permitted": "Permitido",
  "enum.firearmUsage.restricted": "Restrito",

  // Documentos
  "document.type": "Tipo de Documento",
  "document.number": "Número",
  "document.expiry": "Data de Vencimento",
  "document.attachment": "Anexo/Arquivo",
  "enum.documentType.cr": "CR",
  "enum.documentType.craf": "CRAF",
  "enum.documentType.gt": "Guia de Tráfego",
  "enum.documentType.nf": "Nota Fiscal",

  // Acessórios
  "accessory.list.title": "Meus Acessórios",
  "accessory.form.title": "Dados do Acessório",
  "accessory.type": "Tipo de Acessório",
  "accessory.manufacturer": "Fabricante",
  "accessory.model": "Modelo",
  "accessory.serialNumber": "Número de Série",
};
