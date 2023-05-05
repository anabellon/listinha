import 'package:realm/realm.dart';

part 'configuration_model.g.dart';

// flutter pub run realm generate => sempre gerar quando adicionar nova propriedade

@RealmModel() // para reconhecer o texto como tabela
class _ConfigurationModel {
  late String themeModeName;
  late DateTime? syncDate;
}
