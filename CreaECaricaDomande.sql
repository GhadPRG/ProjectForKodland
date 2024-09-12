CREATE TABLE questions (
    id INT PRIMARY KEY,
    question_text VARCHAR(255) NOT NULL
);


CREATE TABLE answers (
    id INT PRIMARY KEY,
    question_id INT,
    answer_text VARCHAR(255) NOT NULL,
    is_correct BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE
);

-- Domande su Sviluppo di intelligenza artificiale in Python
INSERT INTO questions (id, question_text) 
VALUES 
(1,'Quale libreria Python è ampiamente utilizzata per il machine learning?'),
(2,'Quale funzione in Python è usata per addestrare un modello di apprendimento automatico con Scikit-learn?');

-- Domande su Visione computerizzata
INSERT INTO questions (id, question_text) 
VALUES 
(3,'Quale libreria Python è comunemente utilizzata per la visione computerizzata?'),
(4,'Qual è la tecnica di base della visione computerizzata per il rilevamento dei bordi nelle immagini?');

-- Domande su NLP (Programmazione neurolinguistica)
INSERT INTO questions (id, question_text) 
VALUES 
(5,'Quale libreria Python viene usata per il Natural Language Processing?'),
(6,'Qual è il modello di NLP più popolare sviluppato da OpenAI?');

-- Domande su Applicazione di modelli di intelligenza artificiale alle applicazioni Python
INSERT INTO questions (id, question_text) 
VALUES 
(7,'Quale libreria Python è utilizzata per distribuire modelli AI in una applicazione web?'),
(8,'Qual è il framework di deep learning più comune per sviluppare modelli di intelligenza artificiale in Python?');

-- Risposte per la domanda "Quale libreria Python è ampiamente utilizzata per il machine learning?"
INSERT INTO answers (question_id, answer_text, is_correct)
VALUES 
(1, 'TensorFlow', FALSE),
(1, 'PyTorch', FALSE),
(1, 'Scikit-learn', TRUE),
(1, 'Keras', FALSE);

-- Risposte per la domanda "Quale funzione in Python è usata per addestrare un modello di apprendimento automatico con Scikit-learn?"
INSERT INTO answers (question_id, answer_text, is_correct)
VALUES 
(2, 'fit()', TRUE),
(2, 'train()', FALSE),
(2, 'learn()', FALSE),
(2, 'optimize()', FALSE);

-- Risposte per la domanda "Quale libreria Python è comunemente utilizzata per la visione computerizzata?"
INSERT INTO answers (question_id, answer_text, is_correct)
VALUES 
(3, 'Pillow', FALSE),
(3, 'Matplotlib', FALSE),
(3, 'OpenCV', TRUE),
(3, 'Numpy', FALSE);

-- Risposte per la domanda "Qual è la tecnica di base della visione computerizzata per il rilevamento dei bordi nelle immagini?"
INSERT INTO answers (question_id, answer_text, is_correct)
VALUES 
(4, 'Convoluzione', FALSE),
(4, 'Trasformata di Fourier', FALSE),
(4, 'Canny edge detection', TRUE),
(4, 'Rilevamento delle caratteristiche', FALSE);


-- Risposte per la domanda "Quale libreria Python viene usata per il Natural Language Processing?"
INSERT INTO answers (question_id, answer_text, is_correct)
VALUES 
(5, 'OpenCV', FALSE),
(5, 'NLTK', TRUE),
(5, 'Pandas', FALSE),
(5, 'SciPy', FALSE);

-- Risposte per la domanda "Qual è il modello di NLP più popolare sviluppato da OpenAI?"
INSERT INTO answers (question_id, answer_text, is_correct)
VALUES 
(6, 'BERT', FALSE),
(6, 'GPT', TRUE),
(6, 'T5', FALSE),
(6, 'Transformer', FALSE);

-- Risposte per la domanda "Quale libreria Python è utilizzata per distribuire modelli AI in un'applicazione web?"
INSERT INTO answers (question_id, answer_text, is_correct)
VALUES 
(7, 'Flask', TRUE),
(7, 'Pandas', FALSE),
(7, 'Numpy', FALSE),
(7, 'Matplotlib', FALSE);

-- Risposte per la domanda "Qual è il framework di deep learning più comune per sviluppare modelli di intelligenza artificiale in Python?"
INSERT INTO answers (question_id, answer_text, is_correct)
VALUES 
(8, 'TensorFlow', TRUE),
(8, 'Numpy', FALSE),
(8, 'Pandas', FALSE),
(8, 'SciPy', FALSE);


