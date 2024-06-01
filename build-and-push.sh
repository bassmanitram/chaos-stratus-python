set -eu
MY_PATH=$(cd $(dirname $0); pwd)
cd $MY_PATH

python -m build

[[ "${1:-false}" == "true" ]] && twine upload dist/*