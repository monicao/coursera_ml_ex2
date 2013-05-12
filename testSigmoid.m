function testSigmoid()
  
  testEqual(sigmoid(0), 0.5);
  testEqual(ceil(sigmoid(0.1)), 1);
  testEqual(floor(sigmoid(-0.1)), 0);

  V   = [10 0 -10];
  res = [0.99995 0.5 -0.99995];
  testEqual(sigmoid(V), res);

  A   = [10 0 -10; 10 0 -10; 10 0 -10];
  res = [0.99995 0.5 -0.99995; 0.99995 0.5 -0.99995; 0.99995 0.5 -0.99995];
  testEqual(sigmoid(A), res);

end
