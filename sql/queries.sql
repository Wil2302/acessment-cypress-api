-- 1. Listar o nome de todos os alunos matriculados na disciplina de Cálculo do professor João
SELECT a.nome
FROM alunos a
JOIN matriculas m ON a.id_aluno = m.id_aluno
JOIN disciplinas d ON m.id_disciplina = d.id_disciplina
JOIN professores p ON d.id_professor = p.id_professor
WHERE d.nome = 'Cálculo' AND p.nome = 'João';

-- 2. Exibir a quantidade de alunos por disciplina
SELECT d.nome, COUNT(m.id_aluno) AS qtd_alunos
FROM disciplinas d
JOIN matriculas m ON d.id_disciplina = m.id_disciplina
GROUP BY d.nome;

-- 3. Listar as disciplinas que todos os professores lecionam
SELECT d.nome
FROM disciplinas d
JOIN professores p ON d.id_professor = p.id_professor
GROUP BY d.nome
HAVING COUNT(DISTINCT p.id_professor) = (SELECT COUNT(*) FROM professores);

-- 4. Exibir o total de professores
SELECT COUNT(*) AS total_professores FROM professores;

-- 5. Listar todos os alunos que cursaram alguma disciplina do ano 2000 até 2020
SELECT DISTINCT a.nome
FROM alunos a
JOIN matriculas m ON a.id_aluno = m.id_aluno
JOIN disciplinas d ON m.id_disciplina = d.id_disciplina
WHERE m.ano BETWEEN 2000 AND 2020;