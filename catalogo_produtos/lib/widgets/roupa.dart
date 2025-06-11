import 'package:catalogo_produtos/widgets/produto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoupaWidget extends ProdutoWidget {
  final String marca;
  final String tamanho;
  
  const RoupaWidget({
    required super.nome, 
    required super.preco, 
    required super.descricao,
    required super.imagemUrl, 
    required super.onTap,
    super.key,
    required this.marca,
    required this.tamanho,
  });

  @override
  String getTipoProduto() => "Roupa";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 400,
        margin: EdgeInsets.symmetric(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 195, 195, 192),
        ),
        child: Row(
          children: [
            imagemUrl,
            Column(
              children: [
                Text(nome),
                Text(preco.toString()),
                Text(descricao),
                Text(marca),
                Text(tamanho)
              ],
            )
          ],
        ),
      ),
    );
  }
}