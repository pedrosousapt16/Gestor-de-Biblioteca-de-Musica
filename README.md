# Gestor-de-Biblioteca-de-Musica

Descrição

Modela uma biblioteca de músicas e playlists. O núcleo é composto por funções puras, escritas com recursão explícita e pattern matching, que permitem pesquisar, adicionar, remover, contar e calcular durações.

Estrutura do projeto

Ficheiro	Conteúdo

Model.hs	Tipos: Genero, Musica (record), Biblioteca, Playlist

Funcoes.hs	Funções sobre a biblioteca e as playlists

Dados.hs	Dados de teste (músicas, biblioteca e playlists)

Modelo de dados
Genero: tipo algébrico com vários construtores (Rock, Pop, Jazz, ...) e Outro String para géneros não previstos.

Musica: record com id, título, artista, álbum, género, duração (segundos), ano, avaliação (Maybe Int, Nothing se ainda não avaliada) e reproduções.

Biblioteca: sinónimo de [Musica]

Playlist: nome e lista de músicas.

Como executar
Requer o GHC/GHCi instalado. Na pasta dos ficheiros:

ghci
:l Dados.hs

O Dados.hs importa Model e Funcoes, por isso este comando carrega tudo.

Funções principais

Função	                Descrição

duracaoTotal	        soma das durações de uma biblioteca (segundos)

procuraId	            procura uma música pelo id (Maybe Musica)

removeMusica	        remove a música com o id dado

adicionaMusica	        adiciona uma música (ignora ids repetidos)

nMusicaPorArtista	    número de músicas de um artista

musicaDoGenero	        músicas de um dado género

listaTitulos	        lista dos títulos

totalReproducoes	    total de reproduções

maisOuvida	            música mais ouvida (Nothing se vazia)

mostrarAvalia	        texto com a avaliação de uma música

formatoDuracao	        duração de uma música no formato min:seg

duracaoPlaylist	        duração total de uma playlist

contaMusicas	        número de músicas de uma biblioteca

contaMusicasDePlaylist	número de músicas de uma playlist

Exemplos de utilização
duracaoTotal bibliotecaGeral resultado: 1091

formatoDuracao m1 resultado: "4:51"


Pedro Sousa al2025167206
Afonso Freitas al2025167193
Miguel Ferreira al2025162749
