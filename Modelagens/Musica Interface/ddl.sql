

create table tb_usuario (
	ID_USUARIO 			INT PRIMARY KEY AUTO_INCREMENT ,
	DS_EMAIL			VARCHAR(30),
	DS_SENHA			VARCHAR(30),
    DT_NASCIMENTO		DATE,
    DS_CPF				VARCHAR(15),
    DS_TELEFONE			VARCHAR(15)
);


create table tb_artista (
	ID_ARTISTA		INT PRIMARY KEY AUTO_INCREMENT,
    NM_ARTISTA		VARCHAR(40),
    DS_PAIS			VARCHAR(20)
);

create table tb_album (
	ID_ALBUM		INT PRIMARY KEY AUTO_INCREMENT,
    NM_ALBUM		VARCHAR(30),
    FK_ARTISTA 		int,
    foreign key (FK_ARTISTA) references tb_artista (ID_ARTISTA)
);

create table tb_musica (
	ID_MUSICA			INT PRIMARY KEY AUTO_INCREMENT,
    NM_MUSICA			VARCHAR(30),
    QT_VIEWS			INT,
	FK_ALBUM			INT,	
    FOREIGN KEY (FK_ALBUM) REFERENCES tb_album (ID_ALBUM)
);

create table tb_musica_cantor (
	FK_CANTOR	INT,
    FK_MUSICA	INT,
    FOREIGN KEY (FK_CANTOR) REFERENCES TB_ARTISTA (ID_ARTISTA),
    FOREIGN KEY (FK_MUSICA) REFERENCES TB_MUSICA (ID_MUSICA)
);

create table tb_playplist_musica (
	fk_playlist		int,
    fk_musica		int,
    foreign key (fk_playlist) references tb_playlist (id_playlist),
    foreign key (fk_musica) references tb_musica (id_musica)
);

create table tb_playlist (
	ID_PLAYLIST			INT PRIMARY KEY AUTO_INCREMENT,
    DS_NOME				VARCHAR(20),
    ds_favorito			bool,
	ds_visibilidade		varchar(10),
    criador				int,
    foreign key (criador) references tb_usuario (id_usuario)
);

create table tb_playlist_favorita (
	id_usuario	int,
    id_playlist int,
    foreign key (id_usuario) references tb_usuario (id_usuario),
    foreign key (id_playlist) references tb_playlist (id_playlist)
);

create table tb_artista_favorito (
	id_usuario		int,
    id_artista		int,
    foreign key(id_usuario) references tb_usuario (id_usuario),
	foreign key(id_artista) references tb_artista (id_artista)
);