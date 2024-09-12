import sqlite3

connection=sqlite3.connect('domandine.db')
with open('CreaECaricaDomande.sql') as f:
    connection.executescript(f.read())

connection.commit
connection.close 