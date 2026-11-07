module Funcoes where

import Model
import Model (Playlist)


duracaoTotal :: Biblioteca -> Int 
duracaoTotal [] = 0 
duracaoTotal (x:xs) = duracao x + duracaoTotal xs

procuraId :: Int -> Biblioteca -> Maybe Musica
procuraId _ [] = Nothing
procuraId i (x:xs)
    | i == idMusica x = Just x
    | otherwise = procuraId i xs

removeMusica :: Int -> Biblioteca -> Biblioteca
removeMusica _ [] = []
removeMusica i (x:xs)
    | i == idMusica x = xs 
    | otherwise = x : removeMusica i xs 

adicionaMusica :: Musica -> Biblioteca -> Biblioteca
adicionaMusica m lista = case procuraId (idMusica m) lista of
    Nothing -> m : lista
    Just _ -> lista

nMusicaPorArtista :: String -> Biblioteca  -> Int 
nMusicaPorArtista _ [] = 0
nMusicaPorArtista nm (x:xs) 
    | nm == artista x = 1 + nMusicaPorArtista nm xs
    | otherwise = nMusicaPorArtista nm xs

musicaDoGenero :: Genero -> Biblioteca  -> Biblioteca 
musicaDoGenero _ [] = []
musicaDoGenero gn (x:xs) 
    | gn == genero x = x : musicaDoGenero gn xs
    | otherwise = musicaDoGenero gn xs


listaTitulos :: Biblioteca -> [String]
listaTitulos [] = []
listaTitulos (x:xs) = titulo x : listaTitulos xs
    
totalReproducoes :: Biblioteca -> Int 
totalReproducoes [] = 0
totalReproducoes (x:xs) = reproducoes x + totalReproducoes xs 

maisOuvida :: Biblioteca -> Maybe Musica
maisOuvida [] = Nothing
maisOuvida (x:xs) = aux xs x
    where 
        aux [] m = Just m
        aux (y:ys) m 
            | reproducoes y > reproducoes m = aux ys y
            | otherwise = aux ys m 

mostrarAvalia :: Musica -> String
mostrarAvalia m = case avaliacao m of 
    Nothing -> "Nao tem avaliacao"
    Just i -> "Tem " ++ show i ++ "/5"

formatoDuracao:: Musica -> String
formatoDuracao m
    | seg < 10 = show mins ++ ":0" ++ show seg
    | otherwise = show mins ++ ":" ++ show seg
    where 
        seg = (duracao m) `mod` 60
        mins = (duracao m) `div` 60

duracaoPlaylist:: Playlist -> Int -- (tempo em segundos mudar depois para por em formato) 
duracaoPlaylist (Playlist _ lista ) = duracaoTotal lista

contaMusicas:: Biblioteca -> Int 
contaMusicas [] = 0
contaMusicas (_:xs) = 1 + contaMusicas xs 

contaMusicasDePlaylist:: Playlist -> Int  
contaMusicasDePlaylist (Playlist _ list) = contaMusicas list

