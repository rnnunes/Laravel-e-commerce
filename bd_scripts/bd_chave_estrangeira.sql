use e_comerce;

alter table produto add constraint foreign key (categoria_id) 
references categoria (id);

alter table itens_pedido add constraint foreign key (produto_id)
references produto (id);

alter table itens_pedido add constraint foreign key (pedido_id)
references pedido (id);

alter table pedido add constraint foreign key (usuario_id)
references usuario (id);

alter table endereco add constraint foreign key (usuario_id)
references usuario (id);
