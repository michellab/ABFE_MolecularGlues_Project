find /home/yanfz/IBG1_test5_adpt_copy/get_restrain -name "run.sh" | while read script; do
  dir=$(dirname "$script")
  (
    cd "$dir" || exit
    sbatch ./run.sh
  )
done
