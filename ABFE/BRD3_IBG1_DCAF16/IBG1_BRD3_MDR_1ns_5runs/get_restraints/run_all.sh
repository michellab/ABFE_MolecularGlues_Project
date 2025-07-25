find /home/yanfz/IBG1_BRD3_MDR/get_restraints -name "run.sh" | while read script; do
  dir=$(dirname "$script")
  (
    cd "$dir" || exit
    sbatch ./run.sh
  )
done