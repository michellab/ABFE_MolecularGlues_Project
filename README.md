# ABFE_MolecularGlues_Project

## This repository contains:

---

### - ABFE

Absolute Binding Free Energy (ABFE) calculations for bivalent molecular glue ternary systems from [1]. All A3FE input files and the results of 1 ns non-adaptive simulations for 5 replicas are included in their respective folders. The input files include parameterized bound and free systems in `.prm7` and `.rst7` formats. Original structural files and parameterization scripts are available in the `input_prep` folder.

For the IBG1–BRD4–DCAF16 and IBG1–BRD3–DCAF16 systems, both Boresch Restraints (BR) and Multiple Distance Restraints (MDR) were tested. For the IBG3–BRD4–DCAF16 system, only MDR was applied. MDR restraints were generated using **BioSimSpace**, as demonstrated in the `restraint_gen.ipynb` notebooks. Release free energies were calculated using the **mdr-release** method described at:  
[https://github.com/michellab/Multiple-Distance-Restraints](https://github.com/michellab/Multiple-Distance-Restraints)

Example input files for each MDR calculation can be found in the `get_restraints/release1` folder.

---

### - IBG3_docking

This folder contains the [HADDOCK 2.4 webserver](https://rascar.science.uu.nl/haddock2.4/) input files and the top docking results for the IBG3–BRD4–DCAF16 system. The `IBG3_docking_best` folder includes 400 water-refined structures, along with the 10 best-ranked structures based on **DockQ** scores.

The distance restraints used for docking are provided in the `IBG3_distance_restraints.tbl` file, where:

- BRD4 is segment A  
- IBG3 is segment B  
- DCAF16 is segment C

The active residues were selected based on references [1] and [2].

---

### References

[1] Hsia, O., Hinterndorfer, M., Cowan, A.D. et al. *Targeted protein degradation via intramolecular bivalent glues.* **Nature** 627, 204–211 (2024). https://doi.org/10.1038/s41586-024-07089-6  
[2] Filippakopoulos, P., Qi, J., Picaud, S. et al. *Selective inhibition of BET bromodomains.* **Nature** 468, 1067–1073 (2010). https://doi.org/10.1038/nature09504
