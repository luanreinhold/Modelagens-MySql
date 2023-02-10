create database sistemaMusica;
use sistemaMusica;

insert into tb_usuario (ds_email, ds_senha, dt_nascimento, ds_telefone)
				values('luan@gmail.com', '1234', '2002-04-12', '119837212');
                select * from tb_usuario;
                
INSERT INTO tb_artista (nm_artista)
				values('Michael Jackson');
                
select * 
from tb_artista;

select * 
from tb_album 
join tb_artista a 
on tb_album.fk_artista = a.id_artista;

update 
tb_album
set FK_ARTISTA = 1
where ID_ALBUM = 2;

insert into tb_album (nm_album)
values('Billie Jean');

insert into tb_musica (fk_album, nm_musica)
				values(2, 'ESPOREI NA MANIV');
				
SELECT * 
FROM TB_ARTISTA AS A
JOIN TB_ALBUM 
ON TB_ALBUM.ID_ALBUM = A.ID_ARTISTA
JOIN TB_MUSICA 
ON TB_MUSICA.ID_MUSICA = A.ID_ARTISTA;

select * from tb_album;
SELECT *
FROM TB_MUSICA AS M
JOIN TB_ALBUM AS A
ON M.FK_ALBUM = A.ID_ALBUM
WHERE A.NM_ALBUM like 'nome album' ;

insert into tb_musica_cantor (fk_cantor, fk_musica)

values(1, 4);
select *
from tb_musica_cantor  mc
join tb_musica m on mc.fk_musica = m.id_musica
join tb_artista a on mc.fk_cantor = a.id_artista
order by qt_views desc;

select * from tb_musica;

insert into tb_musica (nm_musica, qt_views)
				values('Hoje sou eu quem naos mais te', 100000);
                select * from tb_musica;

insert into tb_playplist_musica (fk_playlist, fk_musica)
						values(1, 1);
select * 
from tb_playplist_musica;

select 
*
from tb_playlist 
join tb_playplist_musica pm 
on tb_playlist.id_playlist = pm.fk_playlist
join tb_musica m on tb_playlist.id_playlist = m.id_musica;

select 
ds_nome	as playlist,
NM_MUSICA as musica

from tb_playlist
join tb_playplist_musica as pm
on tb_playlist.id_playlist = pm.fk_playlist
join tb_musica m
on pm.fk_musica = m.id_musica;

insert into tb_playlist (ds_nome, ds_favorito, ds_visibilidade, criador )
				values('Favoritas', true, 'Pública', 1);
select 
ds_nome nome,
ds_visibilidade visibilidade,
ds_email	criador
from tb_playlist as p
inner join tb_usuario as u 
on p.id_playlist = u.id_usuario;

drop table tb_playlist;
drop table tb_artista;
drop table tb_album;
drop table tb_musica;
drop table tb_playplist_musica;
drop table tb_usuario;




