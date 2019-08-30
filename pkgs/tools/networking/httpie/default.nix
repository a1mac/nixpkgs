{ stdenv, fetchurl, pythonPackages }:

pythonPackages.buildPythonApplication rec {
  pname = "httpie";
  version = "1.0.2";

  src = pythonPackages.fetchPypi {
    inherit pname version;
    sha256 = "1ax22jh5lpjywpj7lsl072wdhr1pxiqzmxhyph5diwxxzs2nqrzw";
  };

  propagatedBuildInputs = with pythonPackages; [ pygments requests ];

  doCheck = false;

  meta = {
    description = "A command line HTTP client whose goal is to make CLI human-friendly";
    homepage = https://httpie.org/;
    license = stdenv.lib.licenses.bsd3;
    maintainers = with stdenv.lib.maintainers; [ antono relrod schneefux ];
  };
}
