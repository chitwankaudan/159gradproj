#Setting up enviroment
env : environment.yml
	conda env create -f environment.yml

#Running all notebooks
all :
	jupyter nbconvert --ExecutePreprocessor.timeout=3600 --to notebook --execute analysis.ipynb

#Create a phony clean target to remove saved variables and figures
.PHONY : clean
clean:
	rm -f fig/*.png