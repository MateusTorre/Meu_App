import 'package:flutter/material.dart';
import '../widgets/card_icone.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  // Variável que armazena o texto dinâmico na tela
  String mensagem = "Clique no botão para explorar!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App de Icones', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        backgroundColor: const Color.fromARGB(255, 60, 88, 179),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            
            // Texto superior que exibe a mensagem dinâmica na tela
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                mensagem,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            
            // Card 1: Perfil
            CardIcone(
              icone: Icons.person,
              titulo: 'Perfil',
              descricao: 'Gerencie suas informações pessoais e foto.',
              textoBotao: 'Ver Perfil',
              cor: Colors.blue,
              aoClicar: () {
                setState(() {
                  mensagem = 'Você clicou em Perfil';
                });

              onPressed(){

                Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (context) => TelaPerfil(),
               ),
                  );
              }
              },
            ),

            // Card 2: Configurações
            CardIcone(
              icone: Icons.settings,
              titulo: 'Configurações',
              descricao: 'Ajuste as preferências e segurança do app.',
              textoBotao: 'Abrir Ajustes',
              cor: Colors.orange,
              aoClicar: () {
                setState(() {
                  mensagem = 'Você clicou em Configurações';
                });
              },
            ),

            // Card 3: Favoritos
            CardIcone(
              icone: Icons.favorite,
              titulo: 'Favoritos',
              descricao: 'Confira os itens que você salvou na lista.',
              textoBotao: 'Meus Favoritos',
              cor: Colors.red,
              aoClicar: () {
                setState(() {
                  mensagem = 'Você clicou em Favoritos';
                });
              },
            ),

            // Card 4: Ajuda
            CardIcone(
              icone: Icons.help,
              titulo: 'Ajuda',
              descricao: 'Precisa de suporte? Central de atendimento.',
              textoBotao: 'Obter Ajuda',
              cor: Colors.purple,
              aoClicar: () {
                setState(() {
                  mensagem = 'Você clicou em Ajuda';
                });
              },
            ),

            const SizedBox(height: 24),

            
            const Padding(
                padding: EdgeInsets.only(bottom: 24.0),
                child: Text(
                'Desenvolvido por: Mateus Torres',
                   style: TextStyle(
                   fontSize: 14,
                   fontStyle: FontStyle.italic,
                   color: Colors.grey,
                ),
            ),
          ),

          ],
        ),
      ),
      
   
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            mensagem = 'Ação do botão flutuante!';
          });
        },
        backgroundColor: const Color.fromARGB(255, 43, 80, 158),
        child: const Icon(Icons.refresh, color: Colors.white),
      ),
    );
  }
}
