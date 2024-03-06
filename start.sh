. .env
mkdir logs
echo PROJECT_DIRECTORY=$PWD >> .env

echo "========================================="
echo "Installing virtual environment with dependencies..."
echo "========================================="
python3.11 -m venv .venv
echo "$(pwd)" > .venv/lib/python3.11/site-packages/my_project.pth
. .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
