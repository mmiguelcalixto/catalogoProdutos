import 'package:catalogo_produtos/widgets/produto.dart';
import 'package:flutter/material.dart';

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
        child: InkWell(
          onTap: onTap,
          child: Container(
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 200, 200, 200),
          ),
          child: Row(
            children: [
              imagemUrl,
              Column(
                children: [
                  Text(nome, style: TextStyle(fontSize: 30),),
                  Text("R\$${preco.toStringAsFixed(2)}", style: TextStyle(fontSize: 25),),
                  Text(descricao),
                  Column(
                    children: [
                      Text("Marca: $marca"),
                      SizedBox(width: 20),
                      Text("Tamanho: $tamanho")
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}