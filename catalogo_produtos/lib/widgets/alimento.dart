import 'package:catalogo_produtos/widgets/produto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlimentoWidget extends ProdutoWidget {
  final String sabor;
  final String tipoAlimento;
  
  const AlimentoWidget({
    required super.nome, 
    required super.preco, 
    required super.descricao,
    required super.imagemUrl, 
    required super.onTap,
    super.key,
    required this.sabor,
    required this.tipoAlimento,
  });

  @override
  String getTipoProduto() => "Alimento";

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
                      Text("Sabor: $sabor"),
                      SizedBox(width: 20),
                      Text("Tipo: $tipoAlimento")
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