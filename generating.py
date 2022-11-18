# Python 3 code to demonstrate
# SHA hash algorithms.

import hashlib
import string
import json


def listAlphabet():
    upper=list(string.ascii_lowercase)
    lower=list(string.ascii_uppercase)
    number=["1","2","3","4","5","6","7","8","9","0","!","?"]
    result=upper+lower+number
    return result

def addDouble(liste):
    final_liste=[]
    copyliste=liste
    for i in range(0,len(liste)):
        for j in range(0,len(copyliste)):  
            new=liste[i]+copyliste[j]
            final_liste+=[new]
    final_liste+=liste
    return final_liste

def creationDict(list):
    dict={}
    for i in range(0,len(list)):
        str = list[i]
        result=hashlib.sha256(str.encode())
        dict[result.hexdigest()]=str
    return dict

def creationDict2(list,dict):
    for i in range(0,len(list)):
        str = list[i]
        result=hashlib.sha1(str.encode())
        dict[result.hexdigest()]=str
    return dict

def saveJson(dict):
    with open('data.json', 'w') as mon_fichier:
	    json.dump(dict, mon_fichier)

#creation liste [a-zA-Z0-9]
list=listAlphabet()

#creation liste [a-zA-Z0-9]{1,2}
list=addDouble(list)
list=addDouble(list)
#creation dictionnary with the hash asign for each letter(s)/number(s)
dict=creationDict(list)

dict=creationDict2(list,dict)

#Save the dictionnary in data.json
saveJson(dict)





