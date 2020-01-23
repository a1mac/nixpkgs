{ lib, buildPythonPackage, fetchPypi, argparse }:

buildPythonPackage rec {
  pname = "powerline_shell";
  version = "0.7.0";
  format = "wheel";
  
  src = fetchPypi {
    inherit pname version;
	format = "wheel";
    sha256 = "fd07bee58fb182d683ad439bfe0a5277d8ce1ce0f70bf87acc6b7661fa3ec50c";
  };
  
  propagatedBuildInputs = [ argparse ];
  
  meta = with lib; {
    description = "Prompt generator for Bash, ZSH, Fish, and tcsh";
    homepage = "https://github.com/b-ryan/powerline-shell";
    license = licenses.mit;
    maintainers = [ maintainers.arnoldfarkas ];
  };
}
