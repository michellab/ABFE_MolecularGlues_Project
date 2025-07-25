find /home/yanfz/IBG3_test1_MDR/get_restraints -name "run.sh" | while read script; do
  dir=$(dirname "$script")
  (
    cd "$dir" || exit
    sbatch ./run.sh
  )
done