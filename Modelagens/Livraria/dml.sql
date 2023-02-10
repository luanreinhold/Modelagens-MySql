select * from tb_genero;

select nm_livro, nm_genero, id_livro, id_genero
from tb_livro
left join tb_livro_genero lg
on tb_livro.id_livro = lg.fk_livro
left join tb_genero g
on lg.fk_genero = g.id_genero;

select id_pedido, id_cliente, nm_cliente, nm_livro, ds_total
from tb_item_pedido as lg
join tb_livro
on tb_livro.id_livro = lg.fk_livro
join tb_pedido
on lg.fk_pedido = tb_pedido.id_pedido
join tb_cliente
on tb_cliente.id_cliente = tb_pedido.fk_cliente;

select * from tb_item_pedido;


select * 
from tb_livro_genero as lg
join tb_livro 
on lg.id_livro_genero = tb_livro.fk_livro
join tb_genero
on tb_genero.id_genero = lg.id_livro_genero;


