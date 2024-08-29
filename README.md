# Pok-dex
Pokédex com Clean Architecture, MobX para gerenciamento de estado, injeção de dependências com get_it e testes unitários. Inclui canais nativos e uso controlado de pacotes externos para garantir desempenho e manutenibilidade.


Pokédex App
Este é um projeto desenvolvido como parte de um desafio avançado em Flutter, onde foi implementado um aplicativo de Pokédex utilizando Clean Architecture, MobX para gerenciamento de estado, injeção de dependências com get_it e testes unitários abrangentes.

Índice
Introdução
Funcionalidades
Estrutura do Projeto
Configuração do Ambiente
Como Executar
Testes
Tecnologias Utilizadas
Contribuindo
Licença
Introdução
Este aplicativo foi desenvolvido para demonstrar habilidades avançadas em Flutter, seguindo as melhores práticas de arquitetura de software, gerenciamento de estado e testes. Ele utiliza a API pública PokeAPI para exibir uma lista de Pokémons.

Funcionalidades
Listagem de Pokémons com imagens e nomes.
Gerenciamento de estado utilizando MobX.
Arquitetura limpa (Clean Architecture) com separação clara de camadas.
Injeção de dependências com get_it.
Testes unitários abrangentes.
Comunicação nativa através de channels (opcional).
Estrutura do Projeto
O projeto segue a estrutura de Clean Architecture:

domain: Contém as entidades, repositórios e casos de uso (Use Cases).
data: Implementa as fontes de dados e repositórios.
presentation: Contém as páginas, widgets, stores e lógica de apresentação.
core: Contém elementos comuns como temas e utilitários.
Configuração do Ambiente
Certifique-se de ter o Flutter instalado.
Clone o repositório: git clone https://github.com/bimaste/pok-dex.git
Navegue até o diretório do projeto: cd pokedex
Instale as dependências: flutter pub get
Como Executar
Conecte um dispositivo ou inicie um emulador.
Execute o aplicativo: flutter run
Testes
Para rodar os testes unitários:

bash
flutter test
Isso executará os testes configurados para as diferentes camadas do aplicativo.

Tecnologias Utilizadas
Flutter: Framework para desenvolvimento de aplicativos multiplataforma.
MobX: Gerenciamento de estado reativo.
get_it: Injeção de dependências.
PokeAPI: API pública para obter dados de Pokémons.
Mockito: Ferramenta para mocks em testes.
Contribuindo
Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

Licença
Este projeto está licenciado sob a licença MIT - veja o arquivo LICENSE para mais detalhes.
