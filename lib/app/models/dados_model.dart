class DadosCliente {
  String nome;
  String cpf;
  String telefone;
  String email;
  DateTime dataNascimento;
  String nomeMae;

  DadosCliente(
      {this.nome,
      this.cpf,
      this.telefone,
      this.email,
      this.dataNascimento,
      this.nomeMae});

  DadosCliente.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    cpf = json['cpf'];
    telefone = json['telefone'];
    email = json['email'];
    dataNascimento = json['dataNascimento'];
    nomeMae = json['nomeMae'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['cpf'] = this.cpf;
    data['telefone'] = this.telefone;
    data['email'] = this.email;
    data['dataNascimento'] = this.dataNascimento;
    data['nomeMae'] = this.nomeMae;
    return data;
  }
}
