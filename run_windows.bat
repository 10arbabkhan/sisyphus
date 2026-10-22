@echo off
cd /d "%~dp0"
python -m pip install -r requirements.txt
python src\render.py --fps 24 --output output\sisyphus.mp4
pause
