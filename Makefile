install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest --nbval chapter_01_introducing_pandas/chapter_01_introducing_pandas.ipynb

format:
	black *.py

#lint:
#pylint --disable=R,C hello.py

all: install test