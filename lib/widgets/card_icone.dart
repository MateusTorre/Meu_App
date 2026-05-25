import 'package:flutter/material.dart';

class CardIcone extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String descricao;
  final String textoBotao;
  final Color cor;
  final VoidCallback aoClicar; 

  const CardIcone({
    super.key,
    required this.icone,
    required this.titulo,
    required this.descricao,
    required this.textoBotao,
    required this.cor,
    required this.aoClicar,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icone, color: cor, size: 32),
                const SizedBox(width: 12),
                Text(
                  titulo,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: cor),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(descricao, style: const TextStyle(fontSize: 14, color: Colors.black87)),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: cor, foregroundColor: Colors.white),
                onPressed: aoClicar,
                child: Text(textoBotao),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
