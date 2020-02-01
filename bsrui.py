#!/usr/bin/python
import os,random
import subprocess
from flask import Flask,render_template,request
from werkzeug.utils import secure_filename
import base64,MySQLdb as mydb

PEOPLE_FOLDER = os.path.join('static', 'user_images')
db = mydb.connect("localhost","root","ad","bird" )
cursor = db.cursor()

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = PEOPLE_FOLDER

@app.route('/')
def bsrui():
    return render_template('home.html')

@app.route('/upload1',methods=['POST'])
def upload1():
    if request.method == 'POST':
        f = request.files['image']
        f.save("static/user_images/"+secure_filename(f.filename))
        image_name = os.path.join(app.config['UPLOAD_FOLDER'], secure_filename(f.filename))
        birdname=str(subprocess.Popen(['python','-m','scripts.label_image','--graph=tf_files/retrained_graph.pb','--image='+image_name], stdout=subprocess.PIPE,stderr=subprocess.STDOUT).communicate()[0])
        birdname=birdname.splitlines()
        cursor.execute("SELECT species_name,species_desc,no_of_birds FROM species where species_name='"+birdname[1]+"'")
        species_detail = cursor.fetchall()
        return render_template("show_image.html",bird_image=image_name,birdname=birdname,species_detail=species_detail)

@app.route('/upload2',methods=['POST'])
def upload2():
    if request.method == 'POST':
        image_64 = request.form['image_url']
        img_name=str(random.randint(10000000000,99999999999))
        with open('static/user_images/'+img_name+'.png', 'wb') as f:
            f.write(base64.decodestring(image_64.split(',')[1].encode()))
        image_name = os.path.join(app.config['UPLOAD_FOLDER'], img_name+'.png')
        birdname=str(subprocess.Popen(['python','-m','scripts.label_image','--graph=tf_files/retrained_graph.pb','--image='+image_name], stdout=subprocess.PIPE,stderr=subprocess.STDOUT).communicate()[0])
        birdname=birdname.splitlines()
        cursor.execute("SELECT species_name,species_desc,no_of_birds FROM species where species_name='"+birdname[1]+"'")
        species_detail = cursor.fetchall()
        return render_template("show_image.html",bird_image=image_name,birdname=birdname,species_detail=species_detail)

@app.route('/take_snap')
def take_snap():
    return render_template('snap.html')

@app.route('/about/')
def about():
    return render_template('about.html')

@app.route('/contact/')
def contact():
    return render_template('contact.html')

if __name__ == '__main__':
    p = subprocess.Popen('date', stdout=subprocess.PIPE, shell=True)
    (output, err) = p.communicate()
    p_status = p.wait()
    if  err is None:
        app.run(host="192.168.43.217",port=5000)
