from flask import Flask, request, render_template, session, g, redirect, url_for
from textblob import TextBlob
from microsofttranslator import Translator
import mysql.connector, os

app = Flask(__name__)
app.secret_key = os.urandom(24)

conn = mysql.connector.connect( host="localhost", user="root", passwd="", db="quince_garden")
translator = Translator('Mra78DqXsfds', 'x57PCm4+TB7ugBV/sfOAuMWjNbfETCE2Z+HoZE3flGc=')

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/generate/")
def product():
    cursor = conn.cursor()
    cursor.execute("SELECT id_testimoni, respon_testimoner FROM testimoni WHERE polarity is NULL")

    test = list(cursor.fetchall())
    
    ids = []
    senti = []

    for ana in test:
        ids.append(ana[0])  
        senti.append(ana[1])  

    panjang = len(ids)

    for i in range(panjang):
        temp = translator.translate(senti[i], "en")
        analis = TextBlob(temp)
        polaritas = analis.sentiment.polarity
        cursor.execute("UPDATE testimoni SET polarity=%s WHERE id_testimoni=%s",(polaritas,ids[i]))
        conn.commit()

    return render_template("index.html", rows=ids, zzz=senti)


@app.route("/comment/<int:id>", methods=["POST"])
def comment(id):
    comment = str(request.form["comment"])
    analis_comment = TextBlob(comment)
    polaritas = analis_comment.sentiment.polarity
    cursor = conn.cursor()

    cursor.execute("INSERT INTO tb_comment (usr_comment,polarity,id_product,id_user)VALUES(%s,%s,%s,%s)",(comment,polaritas,id,session['user']))
    conn.commit()
    return redirect(url_for("detail", id=id))


if __name__ == "__main__":
    app.run(debug=True)
