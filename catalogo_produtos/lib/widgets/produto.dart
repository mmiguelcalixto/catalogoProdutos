import 'package:flutter/material.dart';

//classe base com propriedades comuns a todos os tipos de produto
abstract class ProdutoWidget extends StatelessWidget {
  final String nome;
  final double preco;
  final String descricao;
  final Image imagemUrl;
  final VoidCallback onTap;
  
  const ProdutoWidget({
    super.key,
    required this.nome,
    required this.preco,
    required this.descricao,
    required this.imagemUrl,
    required this.onTap,
  });

  String getTipoProduto();
}