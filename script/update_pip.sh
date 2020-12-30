pip list --format freeze --outdated | sed 's/=.*//g' | xargs -n1 pip install -U
