module Dados where

import Model


m1,m2,m3,m4,m5:: Musica
m1 = Musica 1 "Fantastic Life" "Cult Member" "Stockholm" (Outro "Tecno") 291 2018 (Just 5) 908
m2  = Musica 2  "Hot Wind Blows"  "Tyler, the Creator" "Call Me If You Get Lost" HipHop 155 2021 (Just 4)  310
m3 = Musica 3 "Blue Fairy" "Clarion" "Blue Fairy" Rock 159 2026 (Just 5) 260
m4 = Musica 4 "God's Plan" "Drake" "Scorpion" HipHop 199 2018 (Just 4)  720
m5 = Musica 5 "Wesley's Theory" "Kendrick Lamar" "To Pimp a Butterfly" Rap 287 2015 (Just 5)  410


bibliotecaGeral :: Biblioteca
bibliotecaGeral = [m1, m2, m3, m4, m5]

favoritas :: Playlist
favoritas = Playlist "Favoritas" [m1, m4]

vazia :: Playlist
vazia = Playlist "Vazia" []

