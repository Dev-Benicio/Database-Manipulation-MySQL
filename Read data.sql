-- Iniciando o diagrama Biblioteca
	use Biblioteca;
    
-- vendo se as tabelas estão sendo iniciadas
	show tables;
    

-- Buscando os dados da Tabela Editora
	select * from Editora;
    select * from Editora where idEditora=1;
    
-- Buscando dados da tabela Autor
	select * from Autor;
    select * from Autor where idAutor=1;
    
-- Buscando dados da Tabela Livro
	select * from Livro;
    select * from Livro where idLivro=1;
    
 -- Buscando dados na Tabela Usuario
	select * from Usuario;
    select * from Usuario where idUsuario=1;
    
-- Buscando dados da tabela Emprestimo
	select * from Emprestimo;
    select * from Emprestimo where idEmprestimo=2;
    
-- Busca Livro do Autor junto com editora que publicou o Livro
	select l.idLivro, l.titulo, l.isbn,
    a.nome_do_autor, e.Editora_nome
    from Livro l
    inner join Autor a on l.idlivro = a.IdAutor
    inner join editora e on e.idEditora = a.idAutor;

-- --------------------- BONUS -----------------------------

-- Chama os emprestimos ativos de qual livro e para qual usuário.
	 select em.idEmprestimo, l.titulo, u.nome, em.situacao from Livro l
	 inner join emprestimo em on l.idLivro = em.idEmprestimo
	 inner join usuario u on u.idUsuario = em.idEmprestimo
	 where em.situacao="Reservado";
    
    
