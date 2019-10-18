# README
Docker container for [meshalyzer](https://github.com/mcellteam/mesh_tools/tree/bee441963034df7592b49ca015f956bd3f8f414f/meshalyzer).

## About
The purpose of the program is to quickly analyze and report on both general characteristics and four topological attributes of meshes. Running meshalyzer on a mesh file will provide enough information in a single report to determine if the mesh will fail as input to any of the manipulation processes described in this project.

## Docker image
The Docker image can be found [here](https://hub.docker.com/r/icaoberg/meshalyzer).

To pull the image from Dockerhub

```
docker pull icaoberg/meshalyzer
```

## Example

### Help
```
docker run -i -t icaoberg/meshalyzer -help
```

---

Support for [CellOrganizer](http://cellorganizer.org/) has been provided by grants GM075205, GM090033 and GM103712 from the [National Institute of General Medical Sciences](http://www.nigms.nih.gov/), grants MCB1121919 and MCB1121793 from the [U.S. National Science Foundation](http://nsf.gov/), by a Forschungspreis from the [Alexander von Humboldt Foundation](http://www.humboldt-foundation.de/), and by the [Freiburg Institute for Advanced Studies](http://www.frias.uni-freiburg.de/lifenet?set_language=en).

[![MMBioS](https://i1.wp.com/www.cellorganizer.org/wp-content/uploads/2017/08/MMBioSlogo-e1503517857313.gif?h=60)](http://www.mmbios.org)

Copyright © 2007-2019 by the [Murphy Lab](http://murphylab.web.cmu.edu) at the [Computational Biology Department](http://www.cbd.cmu.edu) in [Carnegie Mellon University](http://www.cmu.edu)
