# Variant Calling Recipes
[![https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/685)  
The recipes in this directory revolve around tools for variant calling.  

---

## McCortex
This container holds an installation of [McCortex](https://github.com/mcveanlab/mccortex) (version 0.2).

McCortex is a tool for population *de novo* assembly and variant calling. Note
the installation of McCortex in this container has been built with a maximum
kmer size of 31. If you would like a different kmer size you can clone the
recipe file and [build with the appropriate flag](https://github.com/mcveanlab/mccortex#build).

To run McCortex you need to first pull the container and then
execute the container with the name of any of the tools, following by their
normal CLI parameters/options/arguments.

```
singularity pull --force --name mccortex.simg shub://mbhall88/Singularity_recipes:mccortex
singularity exec mccortex.simg mccortex31 --help
```
 In addition, you can also use this container to execute [CortexJDK](https://github.com/mcveanlab/CortexJDK)
 which is a Java class library for performing efficient, low-memory traversals
 on multi-color linked de Bruijn graphs (LdBG) produced by McCortex. You can run
 `cortexjdk` with the following command.  

 ```
singularity exec mccortex.simg java -jar /usr/bin/cortexjdk.jar
 ```

 Obviously you can follow this with any parameters you want.

---

## Mykrobe CLI
This container holds an installation of [Mykrobe](https://github.com/Mykrobe-tools/mykrobe-atlas-cli) CLI tools
(currently commit [8f7fd05](https://github.com/Mykrobe-tools/mykrobe-atlas-cli/commit/8f7fd05b9b94fa3cc40df2845187fa35393b9c2a) but you can change it in the recipe if you need another).  

Mykrobe can be used to predict a sample's drug susceptibility, build a variant
probe set, and genotype a sample using a probe set.  

To run Mykrobe you need to first pull the container and then
execute the container with the name of any of the tools, following by their
normal CLI parameters/options/arguments.

```
singularity pull --force --name mykrobe.simg shub://mbhall88/Singularity_recipes:mykrobe
singularity exec mykrobe.simg mykrobe --help
```  

Note: This container also includes the pre-built probesets plus the version of `mccortex31` that is required by Mykrobe.

---

## pandora

[Pandora](https://github.com/rmcolq/pandora) is a tool for bacterial genome analysis without using a reference genome, including genetic variation from SNPs to gene presence/absence across the whole pan-genome.

```
singularity pull --force --name pandora.simg shub://mbhall88/Singularity_recipes:pandora
singularity exec pandora.simg pandora 
```
