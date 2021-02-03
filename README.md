# Pass_Rev_Shell

Pass_Rev_Shell is for use on Linux and will initiate a simple reverse shell back to your attack box and will require a password upon successful connection. The connection will not prompt for a password but it should be the first argument sent over the connection before continuing with any further commands. Note that providing an incorrect password will exit the reverse shell. There is also no error handling in place.

The desired shell, remote IP Address, port and password can be configured within the arguments array.

For more information on the inner workings of the code, please read the blog [here](https://j33r4ff3.github.io/blog/Creating-TCP-Bind-Shell-with-C_2).

## Compile

```bash
gcc Pass_Rev_Shell.c -o Filename
```
