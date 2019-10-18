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

### Example 1
```
docker run -v /Users/icaoberg/code/docker-meshalyzer/mesh_tools/meshalyzer/examples/example0.mesh:/home/murphylab/example0.mesh -t icaoberg/meshalyzer example0.mesh

MESH FILE INTEGRITY

    # orphan vertices: none
    # missing vertices: none
    # degenerate faces: none
    # duplicate vertex indices: none
    # duplicate face indices: none
    contiguous vertex indexing from 1: no
    contiguous vertex indexing from 1: bad index and +/- 2
    contiguous vertex indexing from 1: NA NA 2 3 4
    contiguous face indexing from 1: yes

MESH ATTRIBUTES

    mesh is closed: yes
    mesh is manifold: yes
    mesh has consistently oriented face normals: yes
    mesh has outward oriented face normals: yes


MESH CHARACTERISTICS

    # vertices: 5400
    # faces: 10796
    # edges: 16194
    # components: 1
    # boundaries: none
    # indistinguishable vertices: none
    object area: [(data units)^2]
    object area: 5.65393e+06
    object volume: [(data units)^3]
    object volume: 3.23708e+08
    object genus: 0
    bounding box: [data units]
    bounding box: [xmin,ymin,zmin][xmax,ymax,zmax]
    bounding box: [5177.54,1860.61,5282.46][6445.44,7514.34,6767.43]
    # edges with indistinguishable vertices: none
    # intersecting faces: none

    Vertex adjacent face statistics [faces]:
       min      4
       max      10
       median   6
       mean     5.99778
       variance 0.918684

    Vertex adjacent face histogram [faces]:
          0 - 0            :         0  |         8 - 8           :       273
          1 - 1            :         0  |         9 - 9           :        35
          2 - 2            :         0  |        10 - 10          :         6
          3 - 3            :         0  |        11 - 11          :         0
          4 - 4            :       174  |        12 - 12          :         0
          5 - 5            :      1550  |        13 - 13          :         0
          6 - 6            :      2151  |        14 - 14          :         0
          7 - 7            :      1211  |        15 - 15          :         0

    Face area statistics [(data units)^2]:
       min      263.671
       max      1514.96
       median   498.289
       mean     523.706
       variance 19306.4

    Face area histogram [(data units)^2]:
          0 - 0            :         0  |     486.7 - 523.7       :      1200
          0 - 264.3        :         1  |     523.7 - 560.8       :      1084
      264.3 - 301.4        :        51  |     560.8 - 597.8       :       844
      301.4 - 338.4        :       344  |     597.8 - 634.9       :       663
      338.4 - 375.5        :       773  |     634.9 - 671.9       :       561
      375.5 - 412.5        :      1171  |     671.9 - 709         :       382
      412.5 - 449.6        :      1316  |       709 - 746         :       307
      449.6 - 486.7        :      1332  |       746 - 1515        :       767

    Face aspect ratio statistics [unitless]:
       min      1.15902
       max      9.02351
       median   1.64641
       mean     1.7489
       variance 0.211206

    Face aspect ratio histogram [unitless]:
      1.155 - 1.5          :      3482  |        15 - 25          :         0
        1.5 - 2            :      5075  |        25 - 50          :         0
          2 - 2.5          :      1587  |        50 - 100         :         0
        2.5 - 3            :       457  |       100 - 300         :         0
          3 - 4            :       160  |       300 - 1000        :         0
          4 - 6            :        27  |      1000 - 10000       :         0
          6 - 10           :         8  |     10000 - 100000      :         0
         10 - 15           :         0  |    100000 -             :         0
      (Aspect ratio is longest edge divided by shortest altitude)

    Edge length statistics [data units]:
       min      21.4836
       max      94.4644
       median   35.1986
       mean     36.0494
       variance 59.3395

    Edge length histogram [data units]:
          0 - 0            :         0  |        34 - 36.05       :      1705
          0 - 21.67        :         3  |     36.05 - 38.1        :      1636
      21.67 - 23.72        :       181  |      38.1 - 40.16       :      1408
      23.72 - 25.78        :       833  |     40.16 - 42.21       :      1148
      25.78 - 27.83        :      1223  |     42.21 - 44.27       :       956
      27.83 - 29.89        :      1504  |     44.27 - 46.32       :       692
      29.89 - 31.94        :      1609  |     46.32 - 48.37       :       507
      31.94 - 34           :      1749  |     48.37 - 94.46       :      1040

    Edge angle statistics [degress]:
       min      93.215
       max      313.614
       median   180
       mean     181.402
       variance 116.359

    Edge angle histogram [degress]:
          0 - 0            :         0  |     178.5 - 181.4       :      8854
          0 - 161.3        :       399  |     181.4 - 184.3       :       954
      161.3 - 164.1        :       162  |     184.3 - 187.2       :       766
      164.1 - 167          :       222  |     187.2 - 190         :       577
        167 - 169.9        :       318  |       190 - 192.9       :       479
      169.9 - 172.8        :       427  |     192.9 - 195.8       :       304
      172.8 - 175.6        :       661  |     195.8 - 198.7       :       284
      175.6 - 178.5        :       901  |     198.7 - 313.6       :       886
```

---

Support for [CellOrganizer](http://cellorganizer.org/) has been provided by grants GM075205, GM090033 and GM103712 from the [National Institute of General Medical Sciences](http://www.nigms.nih.gov/), grants MCB1121919 and MCB1121793 from the [U.S. National Science Foundation](http://nsf.gov/), by a Forschungspreis from the [Alexander von Humboldt Foundation](http://www.humboldt-foundation.de/), and by the [Freiburg Institute for Advanced Studies](http://www.frias.uni-freiburg.de/lifenet?set_language=en).

[![MMBioS](https://i1.wp.com/www.cellorganizer.org/wp-content/uploads/2017/08/MMBioSlogo-e1503517857313.gif?h=60)](http://www.mmbios.org)

Copyright © 2007-2019 by the [Murphy Lab](http://murphylab.web.cmu.edu) at the [Computational Biology Department](http://www.cbd.cmu.edu) in [Carnegie Mellon University](http://www.cmu.edu)
