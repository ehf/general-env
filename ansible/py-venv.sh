# reference: https://docs.python.org/3/library/venv.html#module-venv
#
# source ./py-env.sh
#
export PATH=/opt/homebrew/bin:$PATH
venv_dir="${VENVDIR:-"$HOME/.venvs/$(basename $(pwd))"}"
mkdir -p "$venv_dir"

test ! -f "${venv_dir}/bin/activate" || python3 -m venv "$venv_dir"

source "${venv_dir}/bin/activate"
python3 -m pip install pip==22.1.1

python3 -m pip install -r requirements.txt
ansible-galaxy collection install -r requirements.yml
ansible-galaxy install -r requirements.yml

##
