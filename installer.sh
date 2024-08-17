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
    rmdir ProjectXSource

}

def_dwAnim && def_Downloading

def_Configuring() {

   cd $HOME && touch prx.sh > /dev/null 2>&1
     sleep 0.5 && chmod +x prx.sh
   echo "cd $HOME" >> prx.sh
   echo "cd '.Project X'" >> prx.sh
   echo "bash Main_Login.sh" >> prx.sh

    # configure priv
   
   cd ~ && cd '.Project X'
    chmod 001 Main_Login.sh

}