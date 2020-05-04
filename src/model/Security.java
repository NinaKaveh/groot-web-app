package model;

import java.security.*;

public class Security {
/*
    public static void main(String[] args) {
        String pass = "azerty123";
        String pass2 = "azerty123";
        if (hashPassword(pass).equals(hashPassword(pass2))){
            System.out.println("ok");
        }
    }
*/
    public String hashPassword(String password){
        String hashedPass = "";
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");

            md5.update(password.getBytes());        //Add password bytes to digest
            byte[] bytes = md5.digest();                        //Get the hash's bytes
            StringBuilder stringBuild = new StringBuilder();            //Convert it to hexadecimal format

            for (byte aByte : bytes) {
                stringBuild.append(Integer.toString((aByte & 0xff) + 0x100, 16).substring(1));
            }
            hashedPass = stringBuild.toString();                    //hashed password in hexadecimal

        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashedPass;

    }
}
