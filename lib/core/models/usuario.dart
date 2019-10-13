class Usuario {
  String nome;
  double valor_fatura;
  double limite_disponivel;

  Usuario({this.nome, this.valor_fatura, this.limite_disponivel});
}

var usuario =
    Usuario(nome: "Yuri", valor_fatura: 146.21, limite_disponivel: 69.69);
