data {
  int y; // Observed outcome of response
  int n; // Number of trials
}
parameters {
  real<lower=0, upper=1> theta;
}
model {
  y ~ binomial(n, theta);
  theta ~ beta(1,1);
}
