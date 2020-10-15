#1. Quais sabores de sorvetes iniciam com a letra "c"? Exiba o nome deles.
select sabor from sorvete where sabor like 'c%';

#2. Quais clientes nasceram entre 01/1988 e 12/1990? Exiba o nome e o e-mail deles.
select nome, email from cliente where nascimento between '1988-01-01' and '1990-12-31';

#3. Qual a média de preço dos sorvetes? 
select avg(preco_unitario) from sorvete;

#4. Qual o sorvete mais caro? Exiba o nome dele, junto com seu respectivo preço e tipo.
select tipo, sabor, max(preco_unitario) from sorvete;
 
#5. Qual o sorvete mais barato? Exiba o nome dele, junto com seu respectivo preço e tipo.
select tipo, sabor, min(preco_unitario) from sorvete;

#6. Quantos sabores de sorvetes estão disponíveis na sorveteria para serem comprados?
select count(sabor) from sorvete;

#7. Quais sorvetes possuem o preço abaixo de 2 reais, por unidade? Exiba o sabor e o preço dos mesmos.
select sabor, preco_unitario from sorvete where preco_unitario < '2.00';

#8. Quais sorvetes possuem o preço acima de 2.50 reais, por unidade? Exiba o sabor e o preço dos mesmos.
select sabor, preco_unitario from sorvete where preco_unitario > '2.50';

#9. Quais clientes possuem a letra "e" no nome? Exiba uma listagem de dados dos mesmos.
select * from cliente where nome like '%e%';

#10. Insira os seguintes valores na tabela sorvete (a inserção com os erros de português é necessária, para os próximos exercícios): 
insert into sorvete values
(null, 'picolé', 'uva', '1.30'),
(null, 'sorv masa', 'frambuesa', '2.99'),
(null, 'sorvete de poti', 'abacachi', '8.11');

#11. Corrija a linha que estava com erros de português, como "sorvete de masa" e "frambuesa", utilizando o comando update.
update sorvete set tipo = 'sorv massa', sabor = 'framboesa' where id = 8;

#12. Corrija a linha que estava com erros de português, como "sorvete de poti" e "abacachi", utilizando o comando update.
update sorvete set tipo = 'sorvete de pote', sabor = 'abacaxi' where id = 9;

#13. Exiba o nome e o sabor do sorvete que cada cliente comprou, ordenado pelo nome do cliente.
select c.nome, s.sabor 
from cliente c inner join sorvete s 
where s.id_cliente = c.id_cliente
order by nome;

#14. Exiba o nome do comprador, o sabor do sorvete mais caro e o preço do mesmo que foi comprado.
select c.nome, s.sabor, max(s.preco_unitario) as 'preco'
from cliente c inner join sorvete s 
where s.id_cliente = c.id_cliente;

#15. Exiba o nome do comprador, o sabor do sorvete mais barato e o preço do mesmo que foi comprado.
select c.nome, s.sabor, min(s.preco_unitario) as 'preco'
from cliente c inner join sorvete s 
where s.id_cliente = c.id_cliente;

