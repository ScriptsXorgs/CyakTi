clear
echo "[WARNING] Remember, this Terminal is only for Termux."
echo " "
sleep 1

def_dwAnim() {

      for i in {1..5}; do
         echo "[ProjectX]> Downloading [-  ]"
         sleep 0.5
         clear
         echo "[ProjectX]> Downloading [-- ]"
         sleep 0.5
         clear
         echo "[ProjectX]> Downloading [---]"
         sleep 0.5
         clear
      done

}

def_Downloading() {

   cd $HOME 
    git clone https://github.com/ScriptsXorgs/ProjectXSource.git
    cd ProjectXSource
    mv '.Project X' $HOME
    cd ..
    rm -rf ProjectXSource

}

def_dwAnim && def_Downloading

def_Configuring() {
   cd "$HOME" 
   
   # Crear el archivo prx.sh de forma silenciosa y asegurar permisos de ejecución
   touch prx.sh > /dev/null 2>&1
   sleep 0.5
   chmod +x prx.sh
   
   # Agregar comandos al archivo prx.sh
   echo "cd \"$HOME\"" > prx.sh
   echo "cd '.Project X'" >> prx.sh
   echo "bash Main_Login.sh" >> prx.sh
}

def_Configuring

