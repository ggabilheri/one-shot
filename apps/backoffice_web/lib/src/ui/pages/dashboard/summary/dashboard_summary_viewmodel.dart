import 'package:backoffice_web/src/core/viewmodel.dart';

abstract class IDashboardSummaryViewModel extends IViewmodel {
  // Dados simulados para o resumo
  int get totalCacs;
  int get totalArms;
  double get monthlyRevenue;
  List<Map<String, dynamic>> get recentActivities;
}

class DashboardSummaryViewModel extends Viewmodel
    implements IDashboardSummaryViewModel {
  @override
  int get totalCacs => 1250;

  @override
  int get totalArms => 3420;

  @override
  double get monthlyRevenue => 45000.0;

  @override
  List<Map<String, dynamic>> get recentActivities => [
    {'title': 'Novo CAC registrado: João Silva', 'time': 'Há 5 minutos'},
    {'title': 'Arma cadastrada: Taurus G2C', 'time': 'Há 12 minutos'},
    {'title': 'Venda realizada: R\$ 2.500,00', 'time': 'Há 25 minutos'},
    {'title': 'Novo CAC registrado: João Silva', 'time': 'Há 5 minutos'},
    {'title': 'Arma cadastrada: Taurus G2C', 'time': 'Há 12 minutos'},
    {'title': 'Venda realizada: R\$ 2.500,00', 'time': 'Há 25 minutos'},
    {'title': 'Novo CAC registrado: João Silva', 'time': 'Há 5 minutos'},
    {'title': 'Arma cadastrada: Taurus G2C', 'time': 'Há 12 minutos'},
    {'title': 'Venda realizada: R\$ 2.500,00', 'time': 'Há 25 minutos'},
    {'title': 'Novo CAC registrado: João Silva', 'time': 'Há 5 minutos'},
    {'title': 'Arma cadastrada: Taurus G2C', 'time': 'Há 12 minutos'},
    {'title': 'Venda realizada: R\$ 2.500,00', 'time': 'Há 25 minutos'},
    {'title': 'Novo CAC registrado: João Silva', 'time': 'Há 5 minutos'},
    {'title': 'Arma cadastrada: Taurus G2C', 'time': 'Há 12 minutos'},
    {'title': 'Venda realizada: R\$ 2.500,00', 'time': 'Há 25 minutos'},
    {'title': 'Novo CAC registrado: João Silva', 'time': 'Há 5 minutos'},
    {'title': 'Arma cadastrada: Taurus G2C', 'time': 'Há 12 minutos'},
    {'title': 'Venda realizada: R\$ 2.500,00', 'time': 'Há 25 minutos'},
    {'title': 'Novo CAC registrado: João Silva', 'time': 'Há 5 minutos'},
    {'title': 'Arma cadastrada: Taurus G2C', 'time': 'Há 12 minutos'},
    {'title': 'Venda realizada: R\$ 2.500,00', 'time': 'Há 25 minutos'},
  ];
}
