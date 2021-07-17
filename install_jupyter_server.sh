wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
bash Anaconda3-5.2.0-Linux-x86_64.sh
source .bashrc
conda update conda
# desired output: Solving environment: \ Killed
ipython

from IPython.lib import passwd
passwd()

jupyter-notebook --generate-config

nano ~/.jupyter/jupyter_notebook_config.py

echo "insert"
c = get_config()  # get the config object
# do not open a browser window by default when using notebooks
c.NotebookApp.open_browser = False
# this is the password hash that we generated earlier.
c.NotebookApp.password = 'sha1:073bb9acaa67:b367308802ab66cb1d7654b6684eafefbd61d004'

#Install TLS
sudo wget -r --no-parent -A 'epel-release-*.rpm' https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/
sudo rpm -Uvh dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-*.rpm
sudo yum-config-manager --enable epel*
sudo yum repolist all
#select opton 1
sudo yum install -y certbot
sudo certbot certonly -d py.lurn.cloud

nano ~/.jupyter/jupyter_notebook_config.py
c.NotebookApp.certfile = 'fullchain.pem'
c.NotebookApp.keyfile = 'privkey.pem'
c.NotebookApp.ip = '0.0.0.0'


#Copy directory of certbot paths...
