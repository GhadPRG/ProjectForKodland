from flask import Flask, render_template, request
import sqlite3
import random
import sys

app=Flask(__name__)


@app.route('/')
def index():
    risultato=request.args.get('risultato')
    if risultato is None:
        risultato=0

    connection=sqlite3.connect('domandine.db')
    connection.row_factory=sqlite3.Row
    domande=connection.execute('SELECT * FROM questions').fetchall()   #Organizzo le domande in una lista
    risposte=connection.execute('SELECT * FROM answers').fetchall()  #Organizzo le risposte in una lista
    connection.close()
    random.shuffle(domande)

    return render_template('index.html', domandeToHTML=domande, risposteToHTML=risposte, risultatoPiuAlto=risultato)


risultati=[]

@app.route('/risultato', methods=['GET'])
def risultato():
    lista=request.args

    connection=sqlite3.connect('domandine.db')
    cursor=connection.cursor() #Utilizzo cursor per poter manipolare le query inserendo variabili

    query="SELECT is_correct FROM answers WHERE question_id = ? AND answer_text = ?;"
    tot=0

    for el in lista:
        cursor.execute(query, (el, lista[el]))
        print(el+" "+lista[el], file=sys.stderr)
        risultato = cursor.fetchone()
        if risultato is not None:
            if risultato[0]==1:
                tot+=1
    connection.close()
    
    risultati.append(tot)


    print(max(risultati)) 

    return render_template("risultato.html", result=tot, maxResult=max(risultati))