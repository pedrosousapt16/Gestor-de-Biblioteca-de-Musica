module Model where

data Genero = Rap | Pop | Eletronica | RB | Country | Rock | Classica | HipHop | Jazz | Outro String
        deriving (Show, Eq)


data Musica = Musica{
        idMusica    :: Int,
        titulo      :: String ,
        artista     :: String  ,
        album       :: String ,
        genero      :: Genero ,
        duracao     :: Int ,   
        ano         :: Int ,
        avaliacao   :: Int ,
        reproducoes :: Int
}deriving (Show, Eq)

type Biblioteca = [ Musica ]

data Playlist = Playlist{
        nomePlaylist :: String,
        listaDeMusicas :: Biblioteca
}deriving (Show, Eq)