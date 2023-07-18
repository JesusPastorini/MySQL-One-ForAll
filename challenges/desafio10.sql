CREATE TABLE cancoes_favoritas (
  musica_id INT,
  pessoa_usuaria_id INT,
  PRIMARY KEY (musica_id, pessoa_usuaria_id),
  FOREIGN KEY (musica_id) REFERENCES musica(musica_id),
  FOREIGN KEY (pessoa_usuaria_id) REFERENCES pessoa_usuaria(pessoa_usuaria_id)
) ENGINE = InnoDB;

INSERT INTO cancoes_favoritas (musica_id, pessoa_usuaria_id)
VALUES
  -- Barbara Liskov
  (3, 1), -- ALIEN SUPERSTAR
  (5, 1), -- Como Nossos Pais
  (10, 1), -- Feeling Good
  -- Robert Cecil Martin
  (4, 2), -- Don't Stop Me Now
  -- Ada Lovelace
  (1, 3), -- BREAK MY SOUL
  (3, 3), -- ALIEN SUPERSTAR
  -- Martin Fowler
  (6, 4), -- O Medo de Amar é o Medo de Ser Livre
  (4, 4), -- Don't Stop Me Now
  -- Sandi Metz
  (10, 5), -- Feeling Good
  (2, 5), -- VIRGO'S GROOVE
  -- Christopher Alexander
  (4, 6), -- Don't Stop Me Now
  -- Judith Butler
  (6, 7), -- O Medo de Amar é o Medo de Ser Livre
  -- Jorge Amado
  (3, 8); -- ALIEN SUPERSTAR
