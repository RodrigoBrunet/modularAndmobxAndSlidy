import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:novo/app/models/dadoscliente_model.dart';

part 'cadastro_controller.g.dart';

@Injectable()
class CadastroController = _CadastroControllerBase with _$CadastroController;

abstract class _CadastroControllerBase with Store {
  _CadastroControllerBase() {
    dadosCliente = new DadosCliente(nome: "");
  }
  @observable
  DadosCliente dadosCliente;

  @action
  void setDadosCliente(value) => dadosCliente = value;

  @action
  setNomeCliente(value) {
    dadosCliente.nome = value;
    if (value != null && value != "" && value.length > 0) {
      nomeInformado = true;
    } else {
      nomeInformado = false;
    }
  }

  @action
  setTelefoneCliente(value) => dadosCliente.telefone = value;

  @action
  setEmailCliente(value) => dadosCliente.email = value;

  @action
  setDataNascimentoCliente(value) => dadosCliente.dataNascimento = value;
// controller.setEmailTelefoneCliente({"email": "331293871298127","telefone":"12301928"})
  @action
  setEmailTelefoneCliente(String telefone, String email) {
    dadosCliente.email = email;
    dadosCliente.telefone = telefone;
  }

  @observable
  bool nomeInformado = false;

  @action
  setCpfCliente(value) => dadosCliente.cpf = value;

  @action
  setNomeMaeCliente(value) => dadosCliente.nomeMae = value;
}
