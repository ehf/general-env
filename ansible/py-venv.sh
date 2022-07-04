# reference: https://docs.python.org/3/library/venv.html#module-venv
# source me
venv_dir="${VENVDIR:-"$HOME/.venvs/$(basename $(pwd))"}"
mkdir -p "$venv_dir"

if [ ! -f "${venv_dir}/bin/activate" ]
then
  python3 -m venv "$venv_dir"
fi

source "${venv_dir}/bin/activate"
python3 -m pip install pip

