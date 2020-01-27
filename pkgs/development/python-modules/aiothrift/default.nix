{ lib, buildPythonPackage, fetchPypi, async-timeout, thriftpy2 }:

buildPythonPackage rec {
  pname = "aiothrift";
  version = "0.2.1";
  
  src = fetchPypi {
    inherit pname version;
    sha256 = "a10fbe5c35a864a3cc65fce2a11148a6be982b258d2f59919b49cb42b195b4a1";
  };
  
  propagatedBuildInputs = [ async-timeout thriftpy2 ];
  
  meta = with lib; {
    description = "Asyncio implementation for Apache Thrift"
    homepage = "http://github.com/moonshadow/aiothrift";
    license = licenses.mit;
    maintainers = [ maintainers.arnoldfarkas ];
  };
}

