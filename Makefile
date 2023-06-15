install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
#	find . -name "*.ipynb" -exec python -m pytest --nbval {} \; # identify all ipynb files and run it. 
# There are too many files failing, so will add one at a time as we work through the chapters
	python -m pytest --nbval chapter_01_introducing_pandas/chapter_01_introducing_pandas.ipynb
	python -m pytest --nbval chapter_02_the_series_object/chapter_02_the_series_object.ipynb
	python -m pytest --nbval chapter_03_series_methods/chapter_03_series_methods.ipynb

format:
	black *.py

#lint:
#pylint --disable=R,C hello.py

all: install test