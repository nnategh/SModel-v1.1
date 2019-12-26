# Sparse Variable Generalized Linear Model (S-Model) v1.1
## Function calling sequence
- smodel
	- select_bases
		- make_map
	- make_profile
		- decide_bases
	- make_model
		- fit_model
	- make_results
		- make_resp
## Contraversial definitions
- Cross validation
- Parameter selection
	- Using whole data
- Delta Log-Likelihood
	- Null model
- Post-spike kernel
## Improvement suggestions
- Improve time-complexity of `parameter selection` algorithm
- Select number of parameters according to the number of data
- Intialize kernel parameters with values other than zero
- Using parallel implementation
- Transfer/reduced to a problem can be learned using `Neural Network` frameworks
