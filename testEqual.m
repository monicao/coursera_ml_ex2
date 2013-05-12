function testEqual(a, b)

  if a == b
    fprintf('.');
  else
    printf('Expected ');
    a
    printf('to equal ');
    b
  end
end