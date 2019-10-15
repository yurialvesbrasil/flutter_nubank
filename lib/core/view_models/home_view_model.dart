import 'package:flutter_nubank/core/models/item_botton.dart';
import 'package:flutter_nubank/core/models/usuario.dart';

import 'base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  bool _perfil_expanded = false;
  bool get perfil_expanded => _perfil_expanded;

  int _indexMainPage = 0;
  int get indexMainPage => _indexMainPage;

  Usuario get cliente => usuario;
  List<ItemButton> get itensButtonVM => itensButton;

  @override
  void dispose() {
    super.dispose();
  }

  void setPerfilExpanded(bool perfil_expanded) {
    _perfil_expanded = perfil_expanded;
    notifyListeners();
  }

  void setIndexMainPage({int index}) {
    _indexMainPage = index;
    notifyListeners();
  }
}
