import 'package:flutter/material.dart';

class ViewProduto extends StatelessWidget {
  final String nome;
  final String descricao;
  final double preco;
  final Image imagem;

  final String? marca;
  final String? tamanho;
  final String? modelo;
  final String? tipo;
  final String? sabor;
  final String? tipoAlimento;

  const ViewProduto({
    super.key,
    required this.nome,
    required this.descricao,
    required this.imagem,
    required this.preco,
    this.marca,
    this.tamanho, 
    this.modelo, 
    this.tipo,
    this.sabor,
    this.tipoAlimento,
  });

  showProdutoInfo() {
    if (marca != null && tamanho != null) {
      return Text("Marca: $marca \n Tamanho: $tamanho");
    } 
    if (modelo != null && tipo != null) {
      return Text("Modelo: $modelo \n Tipo: $tipo ");   
    }
    if (sabor != null && tipoAlimento != null) {
      return Text("Sabor: $sabor \n Tipo: $tipoAlimento");   
    }
  }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produto $nome"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(nome, style: TextStyle(fontSize: 30),),
            Text(descricao),
            imagem,
            Text("R\$${preco.toStringAsFixed(2)}", style: TextStyle(fontSize: 25)),
            showProdutoInfo(),
          ],
        ),
      )
    );
  }
}