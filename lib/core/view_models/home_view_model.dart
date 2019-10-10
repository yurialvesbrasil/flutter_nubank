import 'package:flutter_nubank/core/enums/view_state.dart';

import 'base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  bool _perfil_expanded = false;
  bool get perfil_expanded => _perfil_expanded;

  @override
  void dispose() {
    super.dispose();
  }

  void setPerfilExpanded(bool perfil_expanded) {
    _perfil_expanded = perfil_expanded;
    setState(ViewState.IDLE);
  }
}
