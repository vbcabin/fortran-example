! Simple program that takes a real as an input and outputs the result of an equation
program hello
  integer :: num_args
  character(len=32) :: arg
  real :: x, y

  num_args = command_argument_count()
  IF (num_args < 1) THEN
     x = 0
  ELSE
    CALL get_command_argument(1, arg)
    READ(arg, '(f10.0)') x
  END IF

  ! pretend this takes a while
  ! possible bug in metrics collection that expects the container to stay running
  CALL sleep(5)

  y = (x-5)**2 + 1
  PRINT '((a))', "epoch 0:"
  PRINT '((a), (f0.2))',  "y=",  y

end program hello