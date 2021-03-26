# bash-parameters-to-file
This is a simple **Job Control Language (JCL)** bash script that takes series of command line parameters supplied by the user of the programme and writes them to a file, one line at a time (The user is prompted for a filename to save the parameters at runtime).


## Usage:
param_to_file parm1 parm2 parm3 <br />

Where: <br /> param_to_file is the file _name <br />
parm1 parm2 parm3 are the parameters. <br />

## Behaviour
<p>
**Parameter Check:** the program checks whether parameters are supplied with the command. If no parameter was supplied, it raises and error, shows the correct usage format and exit. </p>
<p>
**Read filename:** it prompts the user to supply the filename that the parameters will be written to. </p>
<p>
**Check if file exists:** it checks if the file supplied exists in the program directory. If it does exist, it prompts the user for a new file name until a unique file name is supplied. But if file does not exist, it will create the file and write the parameters to it</p>
