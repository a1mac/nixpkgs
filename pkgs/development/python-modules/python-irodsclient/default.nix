{ lib, buildPythonPackage, fetchPypi, prettytable, six, xmlrunner }:

buildPythonPackage rec {
  pname = "python-irodsclient";
  version = "0.8.2";
  
  src = fetchPypi {
    inherit pname version;
    sha256 = "e77c345bea028c748047656f35f576210528b1332087b5f0a7e2ddd179301447";
  };
  
  propagatedBuildInputs = [ prettytable six xmlrunner ];
  
  # Test depends on existing iRODS installation
  doCheck = false;
  
  meta = with lib; {
    description = "Python API for iRODS";
    homepage = "https://github.com/irods/python-irodsclient";
    license = licenses.bsdOriginal;
    maintainers = [ maintainers.arnoldfarkas ];
  };
}
