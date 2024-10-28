-- Iniciando o diagrama Biblioteca
	use Biblioteca;
    
-- vendo se as tabelas estão sendo iniciadas
	show tables;
    
-- -------------------------- INSERINDO DADOS ---------------------------------- -- 

-- Inserindo dados na tabela Editora
	insert into Editora (idEditora,Editora_nome, estado, pais, telefone) value (1,"albert","DF","Brasil", 610000000);
	insert into Editora (idEditora, Editora_nome, estado, pais, telefone) value (2, "Leonel","DF","Brasil", 619999999);
	insert into Editora (idEditora, Editora_nome, estado, pais, telefone) value (3, "Catolica","DF","Brasil", 618888888);
    
-- Inserindo dados na tabela Autor
    insert into Autor (idAutor,nome_do_autor,nacionalidade) value (1,"Benicio","Brasileiro");
    insert into Autor (idAutor,nome_do_autor,nacionalidade) value (2,"Aline","Brasileira");
    insert into Autor (idAutor,nome_do_autor,nacionalidade) value (3,"Giovanna","Brasileira");


-- Inserindo dados na Tabela Livro
	insert into Livro (idLivro,Editora_idEditora,Autor_idAutor,
		titulo,isbn,ano_publicacao,situacao) 
		value (1,1,1,"Hackeando a Genetica",0004,2010,"Reservado");
    
		insert into Livro (idLivro,Editora_idEditora,Autor_idAutor,
		titulo,isbn,ano_publicacao,situacao) 
        value (2,3,2,"Meu Dorama Favorito",7, 2024,"Entregue");
        
	insert into Livro (idLivro,Editora_idEditora,Autor_idAutor,
		titulo,isbn,ano_publicacao,situacao) 
		value (3,2,3,"Rumo a vitória",3,2023,"Reservado");


-- Inserindo dados na Tabela Usuario
	insert into Usuario (idUsuario,nome,telefone,endereco) 
    value (1,"João",877838338,"Ceilandia, Rua 302, Casa 12");
    
    insert into Usuario (idUsuario,nome,telefone,endereco)
    value (2,"Julia",967845678,"Taguatinga, Praça do Relogio, Casa 17");
    
    insert into Usuario (idUsuario,nome,telefone,endereco) 
    value (3,"Gabriele",934560077,"Aguas Claras, Park Ecologico, Apartamento 4");

  
-- Inserindo dados na tabela Emprestimo
	insert into Emprestimo (idEmprestimo,Usuario_idUsuario,Livro_idLivro,
		dataEmprestimo,dataDevolucao,situacao) 
        value (1,1,1,12062024, "" , "Reservado");
	
    insert into Emprestimo (idEmprestimo,Usuario_idUsuario,Livro_idLivro,
		dataEmprestimo,dataDevolucao,situacao) 
        value (2,2,2,12052024,24062024,"Entregue");
	
    insert into Emprestimo (idEmprestimo,Usuario_idUsuario,Livro_idLivro,
		dataEmprestimo,dataDevolucao,situacao)
		value (3,3,3,17062024,"","Reservado");

    
-- Insere dados na tabela Livro_has_Emprestimo
	insert into Livro_has_Emprestimo (Livro_idLivro,Emprestimo_idEmprestimo)
    value (1,1);
    
    insert into Livro_has_Emprestimo (Livro_idLivro,Emprestimo_idEmprestimo)
    value (2,2);
    
    insert into Livro_has_Emprestimo (Livro_idLivro,Emprestimo_idEmprestimo)
    value (3,3);
    

    
-- -------------------------- ALTERANDO DADOS ---------------------------------- -- 
    
-- Fazendo Update dos dados da tabela Editora
	update Editora set idEditora=1 where idEditora=4;
	update Editora set telefone=900000000 where idEditora=1;
    update Editora set telefone=999999999 where idEditora=2;
    update Editora set telefone=988888888 where idEditora=3;
    
-- Atualizando dados na Tabela Autor
	update Autor set nome_do_autor='JBenicio' where idAutor=1;

-- Atualizando os dados da tabela Emprestimo
begin; -- Testando o bonus
	update Emprestimo set situacao='Entregue' where idEmprestimo=1;
rollback;
commit;
    