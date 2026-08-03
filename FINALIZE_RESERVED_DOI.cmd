@echo off
python scripts\finalize_reserved_doi.py %1
python scripts\build_release_artifacts.py
