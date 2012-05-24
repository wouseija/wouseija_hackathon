create table leis as 
select e.id, p.codigo, p.titulo, e.nome as endereco, e.latitude, e.longitude, e.gmaps, e.bairro, e.ano, r.nome as regiao from projetos as p
inner join local_projetos as lp
on p.codigo = lp.codigo
inner join enderecos as e
on e.id = lp.endereco_id
left join bairros as b
on e.bairro = b.nome
left join regions as r
on r.id = b.region_id