Create database atividade_22c;
use atividade_22c;

Insert into livro (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values(null, 'As Crônicas de Nárnia', 'C.S Lewis', 1950, true,'fantasia','978-0064471190','Harper Collins',768,'Francês');

Insert into livro (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values(null, 'Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, true, 'Ficcao', '978-0241968581', 'Penguin Books', 422, 'Espanhol');

Insert into livro (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values(null, 'Harry Potter e a Pedra Filosofal', 'J.K Rowling', 1997, true, 'Fantasia','978-0439708180', 'Bloomsbury', 309,'Inglês');

Insert into livro (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values(null, 'O Senhor dos Anéis:A sociedade do anel', 'J.R.R. Tolkien', 1954, true, 'Fantasia', '978-0618640157', 'Harper Collins', 423, 'Inglês');

Insert into livro (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values(null, 'História da Civilização', 'Jorge Aragão', 2020, true, 'Hidtória', '978-1247623891', 'Plume Books', 350, 'Português');

Select* from livros order by 1 asc;

Update livros
set disponibilidade = false
where ano_publicacao < 2000;

Update livros
set editora = 'Plume Books'
where titulo = '1984';

Update livros
set idioma = 'Inglês'
where editora = 'Penguin Books';

Update livros
set titulo = 'Harry Potter e a Pedra filosofal (edição especial)'
where isbn = '978-0439708180';

delete from livros
where categoria = 'terror';

delete from livros
where idioma = 'Francês' and ano_publicacao < 1970;

delete from livros
where editora = 'Penguin Books';

select *
from livros 
where paginas > 500;

select categoria, count(*) as total_livros
from livros
group by categoria;

select *
from livros
order by id
limit 5;

select sum(paginas) as total_paginas, count(*) as total_livro, avg(paginas) as media_paginas
from livros
where categoria = 'Drama';

select avg(ano_publicacao) as media_ano_publicacao
from livros
where disponibilidade = 'disponivel';

select *
from livros
order by ano_publicacao desc
limit 1;

select *
from livros
order by ano_publicacao asc
limit 1;

select *
from livros
order by ano_publicacao desc;

select titulo
from livros
where idioma = 'inglês'
union
select titulo
from livros
where idioma = 'português';

select *
from livros
where autor = 'George Orwell';