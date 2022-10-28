# CrackStation

Description of the library :

My library is a cracking station for passwords coded with sha1.
It is able to crack any single-character password, which matches the regular expression [A-Za-z0-9] and is encrypted using SHA-1.
It is also able to crack to any password up to two characters in length, which matches the regular expression[A-Za-z0-9]{1,2} and is encrypted 
using SHA-1.
This library is for a project in my school and the first purpose of it is not to crack password of real person.
You can use it to understand how a crackstation works.

To use this library , you have to import the crackstation in your Swift project with the link of the github and the lastest stable realease> 
After the importation, you will be able to use the files of the library in your project.
To use the crackstation in your source code, you have to import the packacge "CrackStation". 
After, you have to create a Decrypter with two function and an object decrypter :
- an init function in witch you will assign to the decrypter Crackstation()
- a decrypt function which ask a String and which return a string . In this function, you have to use the decrypt(shaHash: String) of the Crackstation 
object to crack the password.
You can verify that the code was cracked by using unit tests.

Latest stable release 1.0.1 


Arthur OLIVIER




